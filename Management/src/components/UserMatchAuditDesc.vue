<template>
    <div style="width:1500px;padding: 15px;background-color: white;margin: 0 auto">
        <div style="width:1500px;margin: 0 auto">
            <div>
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>赛事管理</el-breadcrumb-item>
                    <el-breadcrumb-item>用户报名审核</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <div style="width:100%;margin-top:20px">
                <el-card>
                    <span>
                        报名状态:
                        <el-select v-model="value1" @change="getNewUserAuditWithLimit()" multiple collapse-tags placeholder="请选择">
                            <el-option
                            v-for="item in options"
                            :key="item.value"
                            :label="item.label"
                            :value="item.value">
                            </el-option>
                        </el-select>
                    </span>
                    &nbsp;
                    &nbsp;
                    日期范围:  
                    <el-date-picker
                    v-model="searchDate"
                    type="daterange"
                    range-separator="至"
                    start-placeholder="开始日期"
                    end-placeholder="结束日期">
                    </el-date-picker>
                    &nbsp;
                    &nbsp;
                    其他搜索条件:
                    <el-input placeholder="请输入内容" v-model="input3" class="input-with-select" style="width:200px">
                    </el-input>
                    <el-button icon="el-icon-search" @click="getNewUserAudit">搜索</el-button>
                </el-card>
            </div>
            <div style="width:100%;margin-top:20px">
                <el-card>
                    <el-table
                    :data="teamextend"
                    style="width: 100%">
                    <el-table-column type="expand">
                    <template slot-scope="props">
                        <el-card style="width:100%">
                            <div slot="header" class="clearfix">
                                <span>小组成员</span>
                            </div>
                            <div v-for="(item,index) in props.row.allparticipant" :key="item.id">
                                <div>
                                    <span><font size="4px" color="#409EFF">成员{{index + 1}}</font></span>
                                </div>
                                <el-form label-position="left" inline class="demo-table-expand" >
                                    <el-form-item label="姓名">
                                        <span>{{ item.pname }}</span>
                                    </el-form-item>
                                    <el-form-item label="学号">
                                        <span>{{ item.pstunum }}</span>
                                    </el-form-item>
                                    <el-form-item label="班级年级">
                                        <span>{{ item.pgrade }}</span>
                                    </el-form-item>
                                    <el-form-item label="宿舍号">
                                        <span>{{ item.pdormitoryno }}</span>
                                    </el-form-item>
                                    <el-form-item label="校区">
                                        <span>{{ item.pcampus }}</span>
                                    </el-form-item>
                                    <el-form-item label="学院">
                                        <span>{{ item.pacademy }}</span>
                                    </el-form-item>
                                    <el-form-item label="籍贯">
                                        <span>{{ item.pnativeplace }}</span>
                                    </el-form-item>
                                    <el-form-item label="身份证">
                                        <span>{{ item.pidnumber }}</span>
                                    </el-form-item>
                                    <el-form-item label="QQ号">
                                        <span>{{ item.pqqno }}</span>
                                    </el-form-item>
                                    <el-form-item label="联系方式">
                                        <span>{{ item.pmobilephoneno }}</span>
                                    </el-form-item>
                                    <el-form-item label="Email">
                                        <span>{{ item.email }}</span>
                                    </el-form-item>
                                    <el-form-item label="以往参赛经历">
                                        <span>{{ item.pattendeddesc }}</span>
                                    </el-form-item>
                                </el-form>
                            </div>
                        </el-card>
                    </template>
                    </el-table-column>
                    <el-table-column
                    label="申请时间"
                    width="180">
                    <template slot-scope="scope">
                        <i class="el-icon-time"></i>
                        <span style="margin-left: 10px">{{ scope.row.pdate }}</span>
                    </template>
                    </el-table-column>
                    <el-table-column
                    label="队长学号"
                    width="180">
                    <template slot-scope="scope">
                        <span style="margin-left: 10px">{{ scope.row.capstunum }}</span>
                    </template>
                    </el-table-column>
                    <el-table-column
                    label="队长姓名"
                    width="180">
                    <template slot-scope="scope">
                        <div slot="reference" class="name-wrapper">
                            <el-tag size="medium">{{ scope.row.capname }}</el-tag>
                        </div>
                    </template>
                    </el-table-column>
                    <el-table-column
                    label="赛事标题"
                    width="400">
                    <template slot-scope="scope">
                        <font style="margin-left: 10px">{{ scope.row.mtitle }}</font>
                    </template>
                    </el-table-column>
                    <el-table-column
                    label="报名状态"
                    width="180">
                    <template slot-scope="scope">
                        <span style="margin-left: 10px">{{ scope.row.currentstatus }}</span>
                    </template>
                    </el-table-column>
                    <el-table-column label="操作">
                    <template slot-scope="scope">
                        <div v-if="scope.row.currentstatus == '审核不通过' || scope.row.currentstatus == '等待审核' || scope.row.currentstatus == '审核通过'">
                            <el-radio v-model="scope.row.isadult" label="0" @change="updateCurrentStatus(0, scope.row)">审核通过</el-radio>
                            <el-radio v-model="scope.row.isadult" label="1" @change="updateCurrentStatus(1, scope.row)">审核不通过</el-radio>
                        </div>
                        <el-button
                        v-if="scope.row.currentstatus == '取消报名'"
                        size="mini"
                        type="danger"
                        @click="handleDelete(scope.$index, scope.row)">删除</el-button>
                    </template>
                    </el-table-column>
                </el-table>
                </el-card>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                options: [{
                value: 'a',
                label: '全部'
                }, {
                value: '0',
                label: '已填写参赛信息'
                }, {
                value: '1',
                label: '等待审核'
                }, {
                value: '2',
                label: '审核通过'
                }, {
                value: '3',
                label: '审核不通过'
                }, {
                value: '4',
                label: '待缴费'
                }, {
                value: '5',
                label: '已缴费'
                }, {
                value: '6',
                label: '完成报名'
                }, {
                value: '7',
                label: '取消报名'
                }],
                value1: [],
                // 开始日期
                searchDate: '',
                // 搜索内容
                input3: '',
                str: '',
                teamextend:[],
                aduit: true,
                width: 30,
            }
        },
        created(){
            this.getNewUserAudit();
        },
        methods:{
            getNewUserAudit(){
                if (this.value1.length > 0){
                    for (let i = 0;i < this.value1.length;i++){
                        if (i == 0){
                            this.str = this.value1[i];
                            continue;
                        }
                        this.str = this.str + ":" + this.value1[i];
                    }
                } else {
                    this.str = "";
                }
                let start = "";
                let end = "";
                if (this.searchDate != ''){
                    let date = new Date(this.searchDate[0]);
                    let year = date.getFullYear();
                    let month = date.getMonth() + 1;
                    let day = date.getDate();
                    start = `${year}-${month}-${day}`;
                    date = new Date(this.searchDate[1]);
                    year = date.getFullYear();
                    month = date.getMonth() + 1;
                    day = date.getDate();
                    end = `${year}-${month}-${day}`;
                }
                const result = this.$axios.get("teaminfo/getteaminfobysome?str=" + this.str + "&start=" + start + "&end=" + end + "&other=" + this.input3);
                result.then((response) => {
                    if (response.data.status == 200){
                        this.teamextend = [];
                        for (let i = 0;i < response.data.teaminfoextend.length;i++){
                            let item = response.data.teaminfoextend[i];
                            if (item.currentstatus == 0){
                                item.currentstatus = "已填写参赛信息";
                                item["isaduit"] = "0";
                            } else if (item.currentstatus == 1){
                                item["isaduit"] = "0";
                                item.currentstatus = "等待审核";
                            } else if (item.currentstatus == 2){
                                item["isaduit"] = "1";
                                item.currentstatus = "审核通过";
                            } else if (item.currentstatus == 3){
                                item["isaduit"] = "0";
                                item.currentstatus = "审核不通过";
                            } else if (item.currentstatus == 4){
                                item["isaduit"] = 1;
                                item.currentstatus = "待缴费";
                            } else if (item.currentstatus == 5){
                                item["isaduit"] = 1;
                                item.currentstatus = "已缴费";
                            } else if (item.currentstatus == 6){
                                item["isaduit"] = 1;
                                item.currentstatus = "完成报名";
                            } else if (item.currentstatus == 7){
                                item["isaduit"] = 0;
                                item.currentstatus = "取消报名";
                            }
                            this.teamextend.push(item);
                        }
                    } else {
                        this.$message({
                            message:response.data.statusText,
                            type:'error',
                        });
                    }
                });
            },
            handleDelete(index, row) {
                console.log(index, row);
            },
            updateCurrentStatus(newValue, item){
                let newStatus = -1;
                if (newValue == 0){
                    for (let i = 0;i < this.teamextend.length;i++){
                        if (this.teamextend[i].capid == item.capid){
                            this.teamextend[i].currentstatus = "审核通过";
                            this.teamextend[i].isaduit = 0;
                        }
                    }
                    newStatus = 2;
                } else {
                    for (let i = 0;i < this.teamextend.length;i++){
                        if (this.teamextend[i].capid == item.capid){
                            this.teamextend[i].currentstatus = "审核不通过";
                            this.teamextend[i].isaduit = 1;
                        }
                    }
                    newStatus = 3;
                }
                this.$axios.get("teaminfo/updatecurrentstatus?matchid=" + item.compeid + "&userid=" + item.capid + "&currentStatus=" + newStatus);
            },
            getNewUserAuditWithLimit(){
                this.getNewUserAudit();
            },
        },
    }
</script>

<style scoped>
    .text {
    font-size: 14px;
  }

  .item {
    margin-bottom: 18px;
  }

  .clearfix:before,
  .clearfix:after {
    display: table;
    content: "";
  }
  .clearfix:after {
    clear: both
  }

  .box-card {
    width: 1500px;
    margin-top: 20px
  }
  .text {
    font-size: 14px;
  }
  .el-dropdown-link {
    cursor: pointer;
    color: #409EFF;
  }
  .el-icon-arrow-down {
    font-size: 12px;
  }
  .demonstration {
    display: block;
    color: #8492a6;
    font-size: 14px;
    margin-bottom: 20px;
  }
  .demo-table-expand {
    font-size: 0;
  }
  .demo-table-expand label {
    width: 90px;
    color: #99a9bf;
  }
  .demo-table-expand .el-form-item {
    margin-right: 0;
    margin-bottom: 0;
    width: 50%;
  }
</style>