<template>
    <div style="width:1500px;padding: 15px;background-color: white;margin: 0 auto">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div>
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>赛事管理</el-breadcrumb-item>
                    <el-breadcrumb-item>所有赛事</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <el-card class="box-card">
                <div slot="header" class="clearfix">
                    <span>所有赛事信息</span>
                    <el-button style="float: right; padding: 3px 0" type="text">查找</el-button>
                    <el-button style="float: right; padding: 3px 0" type="text" @click="addNewMatch">添加</el-button>
                </div>
                <div style="width:100%">
                    <el-table
                    :data="tableData"
                    >
                        <el-table-column
                        label="编号"
                        width="180">
                        <template slot-scope="scope">
                            <span style="margin-left: 10px">{{ scope.row.id }}</span>
                        </template>
                        </el-table-column>
                        <el-table-column
                        label="发布日期"
                        width="180">
                        <template slot-scope="scope">
                            <i class="el-icon-time"></i>
                            <span style="margin-left: 10px">{{ scope.row.mdate }}</span>
                        </template>
                        </el-table-column>
                        <el-table-column
                        label="标题"
                        width="800">
                        <template slot-scope="scope">
                            <span style="margin-left: 10px">{{ scope.row.mtitle }}</span>
                        </template>
                        </el-table-column>
                        <el-table-column label="操作">
                        <template slot-scope="scope">
                            <el-button
                            size="mini"
                            @click="handleEdit(scope.$index, scope.row)">查看</el-button>
                            <el-button
                            size="mini"
                            type="danger"
                            @click="handleDelete(scope.$index, scope.row)">删除</el-button>
                        </template>
                        </el-table-column>
                    </el-table>
                </div>
            </el-card>
            <div style="margin-top:40px;width:100%">
                <el-card>
                    <el-pagination
                    @size-change="handleSizeChange"
                    @current-change="handleCurrentChange"
                    :current-page="currentPage4"
                    :page-sizes="[5, 10, 15, 20]"
                    :page-size="5"
                    layout="total, sizes, prev, pager, next, jumper"
                    :total="total"
                    style="width:400px;margin: 0 auto"
                    >
                    </el-pagination>
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
                tableData: [
                //     {
                //     id: 1,
                //     mdate: '2016-05-02',
                //     mtitle: '关于举办桂林理工大学第十七届数学建模竞赛暨2021年全国大学生数学建模竞赛选拔赛的通知',
                //     }, {
                //     id: 2,
                //     mdate: '2016-05-04',
                //     mtitle: '关于举办桂林理工大学第十七届数学建模竞赛暨2021年全国大学生数学建模竞赛选拔赛的通知',
                //     }, {
                //     id: 3,
                //     mdate: '2016-05-01',
                //     mtitle: '关于举办桂林理工大学第十七届数学建模竞赛暨2021年全国大学生数学建模竞赛选拔赛的通知',
                //     }, {
                //     id: 4,
                //     mdate: '2016-05-03',
                //     mtitle: '关于举办桂林理工大学第十七届数学建模竞赛暨2021年全国大学生数学建模竞赛选拔赛的通知',
                // }
                ],
                currentPage4: 1,
                pageSize: 5,
                total:0,
            }
        },
        methods:{
            goBack(){
                this.$router.push("/background");
            },
            handleEdit(index, row) {
                sessionStorage.matchid = "" + row.id;
                // this.$cookie.set("matchid", row.id);
                this.$router.push("/matchdescinfo");
            },
            handleDelete(index, row) {
                const result = this.$axios.get("matchinfo/deletematchinfo?id=" + row.id);
                result.then((response) => {
                    if (response.data.status == 200){
                        this.$message({
                            message:response.data.statusText,
                            type:'success',
                        });
                    } else {
                        this.$message({
                            message:response.data.statusText,
                            type:'error',
                        });
                    }
                });
                this.getAllMatch();
            },
            handleSizeChange(val) {
                this.pageSize=val;
                this.getAllMatch();
            },
            handleCurrentChange(val) {
                this.currentPage4=val;
                this.getAllMatch();
            },
            getAllMatch(){
                const result = this.$axios.get("matchinfo/getallmatchbypage?currentPage=" + this.currentPage4 + "&pageSize=" + this.pageSize);
                result.then((response) => {
                    if (response.data.status == 200){
                        this.tableData=response.data.allmatchbypage.list;
                        this.currentPage4=response.data.allmatchbypage.currentPage;
                        this.pageSize=response.data.allmatchbypage.pageSize;
                        this.total=response.data.allmatchbypage.total;
                    } else {
                        this.tableData=[];
                    }
                });
            },
            // 添加赛事
            addNewMatch(){
                this.$router.push("/publishnewmatch");
            }
        },
        created(){
            this.getAllMatch();
        }
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
</style>