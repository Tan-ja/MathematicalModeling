<template>
    <div style="width:1500px;padding: 15px;background-color: white;margin: 0 auto">
        <div style="width:1500px;margin: 0 auto">
            <div>
                <el-breadcrumb separator-class="el-icon-arrow-right">
                <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                <el-breadcrumb-item>用户管理</el-breadcrumb-item>
                <el-breadcrumb-item>用户信息</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <div style="margin-top:15px;width:500px">
                <el-input placeholder="请输入内容" v-model="checkItem" class="input-with-select" style="margin-left:100%">
                    <el-button slot="append" icon="el-icon-search" @click="getAllUesrInfo"></el-button>
                </el-input>
            </div>
            <div style="margin-top:5px">
                <el-table
                :data="page.tableData"
                style="width: 100%">
                <el-table-column type="expand">
                    <template slot-scope="props">
                        <el-form label-position="left" inline class="demo-table-expand">
                        <el-form-item label="编号">
                            <span>{{ props.row.userid }}</span>
                        </el-form-item>
                        <el-form-item label="Email">
                            <span>{{ props.row.uemail }}</span>
                        </el-form-item>
                        <el-form-item label="昵称">
                            <span>{{ props.row.usernickname }}</span>
                        </el-form-item>
                        <el-form-item label="性别">
                            <span>{{ props.row.usersex }}</span>
                        </el-form-item>
                        <el-form-item label="创建时间">
                            <span>{{ props.row.createtime }}</span>
                        </el-form-item>
                        <el-form-item label="头像">
                            <span>{{ props.row.userfaceaddress }}</span>
                        </el-form-item>
                        <el-form-item label="等级">
                            <span>{{ props.row.userlevel }}</span>
                        </el-form-item>
                        <el-form-item label="籍贯">
                            <span>{{ props.row.userfrom }}</span>
                        </el-form-item>
                        <el-form-item label="昵称">
                            <span>{{ props.row.usersignature }}</span>
                        </el-form-item>
                        <el-form-item label="用户名">
                            <span>{{ props.row.uloginid }}</span>
                        </el-form-item>
                        <el-form-item label="登录密码">
                            <span>{{ props.row.upassword }}</span>
                        </el-form-item>
                        <el-form-item label="是否在线">
                            <span>{{ props.row.uonline }}</span>
                        </el-form-item>
                        <el-form-item label="权限">
                            <span>{{ props.row.urole }}</span>
                        </el-form-item>
                        <el-form-item label="学号">
                            <span>{{ props.row.ustunum }}</span>
                        </el-form-item>
                        <el-form-item label="当前积分">
                            <span>{{ props.row.ucent }}</span>
                        </el-form-item>
                        </el-form>
                    </template>
                </el-table-column>
                <el-table-column
                    prop="userid"
                    label="编号"
                >
                </el-table-column>
                <el-table-column
                    prop="uloginid"
                    label="用户账号"
                >
                </el-table-column>
                <el-table-column
                    prop="ustunum"
                    label="学号"
                >
                </el-table-column>
                <el-table-column
                    prop="createtime"
                    label="创建时间">
                </el-table-column>
                <el-table-column
                    prop="role"
                    label="权限">
                </el-table-column>
                <el-table-column
                    prop="usersex"
                    label="性别">
                </el-table-column>
                <el-table-column
                    fixed="right"
                    label="操作"
                    width="100">
                    <template slot-scope="scope">
                        <el-button @click="deleteClick(scope.row)" type="text" size="small">删除</el-button>
                    </template>
                </el-table-column>
                </el-table>
            </div>
            <div class="block" style="margin-left:30%;margin-top:25px">
                <el-pagination
                @size-change="handleSizeChange"
                @current-change="handleCurrentChange"
                :current-page="page.curPage"
                :page-sizes="[5, 10, 15, 20]"
                :page-size="page.pageSize"
                layout="total, sizes, prev, pager, next, jumper"
                :total="page.totalRow">
                </el-pagination>
            </div>
            <div>
                <el-dialog
                title="提示"
                :visible.sync="centerDialogVisible"
                width="30%"
                center>
                <span>确认删除吗?此操作将不可逆</span>
                <span slot="footer" class="dialog-footer">
                    <el-button @click="canceldelete">取 消</el-button>
                    <el-button type="primary" @click="suretodelete">确 定</el-button>
                </span>
                </el-dialog>
            </div>
            <div v-show="noData">
                <el-card shadow="hover">
                    暂无数据
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
                // 获取有或无检索条件下的数据
                page:{
                    curPage:1,
                    pageSize:5,
                    totalRow:100,
                    tableData: [],
                },
                // 存放用户选择删除的对象
                needtodelete:'',
                // 控制删除对话框的显示
                centerDialogVisible:false,
                // 页面加载时提示系统错误信息
                systemTip:'',
                // 用户查询条件
                checkItem:'',
                // 当数据库中没有数据时
                noData:false,
            }
        },
        methods: {
            // 每页显示数据总数改变
            handleSizeChange(val) {
                this.page.pageSize=val;
                this.getAllUesrInfo();
            },
            // 当前页数改变
            handleCurrentChange(val) {
                this.page.curPage=val;
                this.getAllUesrInfo();
            },
            // 查看用户选择的用户反馈的详细信息
            handleClick(row) {
                // 将用户选择的教师的概略信息保存在cookie中
                sessionStorage.uid = row.userid + "";
                // this.$cookie.set("uid", row.userid + "");
                this.$router.push("/userfeedbackdesc");
            },
            // 删除用户选择的教师的详细信息
            deleteClick(row) {
                // row表示表格绑定的一行数据
                this.needtodelete=row;
                this.centerDialogVisible = true;
            },
            // 用户确认删除
            async suretodelete(){
                this.centerDialogVisible = false;
               const result = await this.$axios.get("user/deleteuserbyuserid?userid=" + this.needtodelete.userid);
                if (result.data.status == 200){
                    this.$notify({
                        message:result.data.statusText,
                        type:'success',
                    });
                } else {
                    this.$notify({
                        message:result.data.statusText,
                        type:'error',
                    });
                    return false;
                }
                // 重新获取所有教师信息
                this.needtodelete='';
                this.getAllUesrInfo();
            },
            // 用户取消删除
            canceldelete(){
                this.needtodelete='';
                this.centerDialogVisible = false;
            },
            // 获取所有教师数据
            async getAllUesrInfo(){
                const result = await this.$axios.get("user/getalluser?currentPage=" + this.page.curPage + "&pageSize=" + this.page.pageSize + "&key=" + this.checkItem);
                if (result.data.status == 200){
                    this.page.tableData = [];
                    this.page.totalRow=result.data.alluser.total;
                    for (let i = 0;i < result.data.alluser.list.length;i++){
                        let item = result.data.alluser.list[i];
                        item["role"] = item.urole == 0?'普通用户':item.urole ==1 ?'普通管理员':'超级管理员';
                        this.page.tableData.push(item);
                    }
                } else {
                    this.noData=true;
                }
            },
            // 添加教师
            addTeacher(){
                this.$router.push("/addteachertotal");
            },
        },
        // 页面加载时从服务器获取所有教师数据
        created(){
            this.getAllUesrInfo();
        },
        
    }
</script>

<style scoped>
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