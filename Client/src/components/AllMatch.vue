<template>
    <div style="wwidth:100%;height:100%;padding: 15px">
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
                    <el-input placeholder="请输入内容" style="float: right;width:300px; padding: 3px 0" v-model="search" class="input-with-select">
                        <el-button slot="append" icon="el-icon-search" @click="searchForContent"></el-button>
                    </el-input>
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
                        </template>
                        </el-table-column>
                    </el-table>
                </div>
            </el-card>
            <div style="margin-top:20px;width:100%">
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
                tableData: [],
                currentPage4: 1,
                pageSize: 5,
                total:0,
                search: '',
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
                const result = this.$axios.get("matchinfo/getallmatchbypage?currentPage=" + this.currentPage4 + "&pageSize=" + this.pageSize + "&search=" + this.search);
                result.then((response) => {
                    if (response.data.status == 200){
                        this.tableData=[];
                        this.tableData=response.data.allmatchbypage.list;
                        this.currentPage4=response.data.allmatchbypage.currentPage;
                        this.pageSize=response.data.allmatchbypage.pageSize;
                        this.total=response.data.allmatchbypage.total;
                    } else {
                        this.tableData=[];
                    }
                });
            },
            searchForContent(){
                if (this.search === ''){
                    this.$notify({
                        message: '请输入竞赛关键字',
                        type: 'error',
                    });
                    return false;
                }
                this.getAllMatch();
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