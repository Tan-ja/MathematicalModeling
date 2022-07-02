<template>
    <div style="width:1500px;padding: 15px;background-color: white;margin: 0 auto">
        <div style="width:1500px;margin: 0 auto">
            <div>
                <el-breadcrumb separator-class="el-icon-arrow-right">
                <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                <el-breadcrumb-item>用户管理</el-breadcrumb-item>
                <el-breadcrumb-item>用户问题反馈</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <!-- <div style="margin-top:15px;width:500px">
                <el-input placeholder="请输入内容" v-model="checkItem" class="input-with-select" style="margin-left:100%">
                    <el-button slot="append" icon="el-icon-search"></el-button>
                </el-input>
            </div> -->
            <div style="margin-top:5px">
                <el-table
                :data="page.tableData"
                style="width: 100%"
                :default-sort = "{prop: 'pdate', order: 'descending'}"
                >
                <el-table-column
                    prop="pid"
                    label="编号"
                    width="180">
                </el-table-column>
                <el-table-column
                    prop="pdate"
                    label="反馈日期"
                    sortable>
                </el-table-column>
                <el-table-column
                    prop="uloginid"
                    label="用户账号"
                    width="180">
                </el-table-column>
                <el-table-column
                    prop="phandle"
                    label="是否处理">
                </el-table-column>
                <!-- <el-table-column
                    prop="uemail"
                    label="邮箱">
                </el-table-column> -->
                <el-table-column
                    fixed="right"
                    label="操作"
                    width="100">
                    <template slot-scope="scope">
                        <el-button @click="handleClick(scope.row)" type="text" size="small">查看</el-button>
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
                this.getAllTeacherInfo();
            },
            // 当前页数改变
            handleCurrentChange(val) {
                this.page.curPage=val;
                this.getAllTeacherInfo();
            },
            // 查看用户选择的用户反馈的详细信息
            handleClick(row) {
                // 将用户选择的教师的概略信息保存在cookie中
                sessionStorage.pid = row.pid + "";
                // this.$cookie.set("pid", row.pid + "");
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
                console.log(this.needtodelete);
               const result = await this.$axios.get("/userfeedback/deleteuserfeed?pid=" + this.needtodelete.pid);
                if (result.data.status == 200){
                    this.$message({
                        message:result.data.statusText,
                        type:'success',
                    });
                } else {
                    this.$message({
                        message:result.data.statusText,
                        type:'error',
                    });
                    return false;
                }
                // 重新获取所有教师信息
                this.needtodelete='';
                this.getAllTeacherInfo();
            },
            // 用户取消删除
            canceldelete(){
                this.needtodelete='';
                this.centerDialogVisible = false;
            },
            // 获取所有教师数据
            async getAllTeacherInfo(){
                const result = await this.$axios.get("/userfeedback/getuserfeedbypage?currentPage=" + this.page.curPage + "&pageSize=" + this.page.pageSize);
                if (result.data.status == 200){
                    this.page.totalRow=result.data.userfeedback.total;
                    this.page.tableData=result.data.userfeedback.list;
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
            this.getAllTeacherInfo();
        },
        
    }
</script>

<style scoped>
    
</style>