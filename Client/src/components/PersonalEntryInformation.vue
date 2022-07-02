<template>
    <div style="width:100%;height:100%;padding: 15px">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <el-card class="box-card-two">
                <div>
                    <el-breadcrumb separator-class="el-icon-arrow-right">
                        <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                        <el-breadcrumb-item>个人中心</el-breadcrumb-item>
                        <el-breadcrumb-item>参赛信息</el-breadcrumb-item>
                    </el-breadcrumb>
                </div>
                <el-card class="box-card">
                    <div slot="header" class="clearfix">
                        <span>所有参赛信息</span>
                        <el-input placeholder="请输入内容" v-model="input3" class="input-with-select" style="width: 300px;float: right">
                            <el-button slot="append" icon="el-icon-search" @click="toSearch"></el-button>
                        </el-input>
                    </div>
                    <div>
                        <el-table
                            :data="tableData"
                            style="width: 100%">
                            <el-table-column
                            label="报名时间"
                            prop="pdate">
                            </el-table-column>
                            <el-table-column
                            label="标题"
                            prop="mtitle"
                            width="800px">
                            </el-table-column>
                            <el-table-column
                            label="报名状态"
                            prop="currentstatus">
                            </el-table-column>
                            <el-table-column
                            align="right">
                            <template slot-scope="scope">
                                <el-button
                                size="mini"
                                @click="handleEdit(scope.$index, scope.row)">查看详情</el-button>
                                <!-- <el-button
                                size="mini"
                                type="danger"
                                @click="handleDelete(scope.$index, scope.row)">取消报名</el-button> -->
                            </template>
                            </el-table-column>
                        </el-table>
                        <div class="intro" v-show="isNoData">
                            <el-card shadow="hover">
                                <font color = "#409EFF" size="5px">暂无参赛信息</font>
                            </el-card>
                        </div>
                    </div>
                </el-card>
            </el-card>
        </div>
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                tableData: [],
                search: '',
                isNoData: false,
                input3: '',
            }
        },
        created(){
            let userInfo = JSON.parse(sessionStorage.user).userid;
            if (userInfo == null){
                this.$notify({
                    message:'请先登录',
                    type:'info',
                });
                this.$router.push("/background");
            } else {
                this.getAllMatchInfoByCapid();
            }
        },
        methods:{
            handleEdit(index, row) {
                sessionStorage.amatchid = "" + row.matchid;
                // this.$cookie.set("amatchid", row.matchid);
                this.$router.push("/personalentrydesc");
            },
            handleDelete(index, row) {
                
            },
            getAllMatchInfoByCapid(){
                let capid = JSON.parse(sessionStorage.user).userid;
                const result = this.$axios.get("teaminfo/getteaminfobycapid?id=" + capid);
                result.then(response =>{
                    if (response.data.status == 200){
                        if (response.data.allteaminfo != null && response.data.allteaminfo.length > 0){
                            for (let i = 0;i < response.data.allteaminfo.length;i++){
                                let value = response.data.allteaminfo[i];
                                let currentStatus = '';
                                if (value[1] == 0){
                                    currentStatus = '已填写参赛人信息';
                                } else if (value[1] == 1){
                                    currentStatus = '正在审核';
                                } else if (value[1] == 2){
                                    currentStatus = '审核通过';
                                } else if (value[1] == 3){
                                    currentStatus = '审核不通过';
                                } else if (value[1] == 4){
                                    currentStatus = '等待缴费';
                                } else if (value[1] == 5){
                                    currentStatus = '完成缴费';
                                } else if (value[1] == 6){
                                    currentStatus = '完成报名';
                                } else if (value[1] == 7){
                                    currentStatus = '已取消报名';
                                }
                                let item = {
                                    matchid: value[0],
                                    currentstatus: currentStatus,
                                    mtitle: value[2],
                                    pdate: value[3],
                                };
                                this.tableData.push(item);
                            }
                        }
                    } else {
                        this.isNoData = true;
                    }
                });
            },
            toSearch(){
                if (this.input3 == ''){
                    this.$notify.error({
                        title: '错误',
                        message: '请输入搜索关键字',
                    });
                    return false;
                }
            },
        },
    }
</script>

<style scoped>
    .introduction{
        /* margin:10px auto; */
        font-size: bold;
        width: 1500px;
        height: 100%;
        margin: 0 auto;
        margin-top: 20px;
    }
    .text {
    font-size: 14px;
  }

  .item {
    padding: 18px 0;
  }

  .box-card {
    width: 100%;
    margin: 0 auto;
    margin-top: 20px;
  }
  .box-card-two{
      width: 100%;
  }
  .intro{
    text-align: center;
    margin-top: 30px;
}
.el-select .el-input {
    width: 130px;
  }
  .input-with-select .el-input-group__prepend {
    width: 200px;
  }
</style>