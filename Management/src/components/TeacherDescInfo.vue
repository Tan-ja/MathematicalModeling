<template>
    <div style="width:1500px;padding: 15px;background-color: white;margin: 0 auto">
        <div style="width:1500px;margin: 0 auto" v-show="!isShow">
            <div>
                <el-breadcrumb separator-class="el-icon-arrow-right">
                <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                <el-breadcrumb-item>协会成员管理</el-breadcrumb-item>
                <el-breadcrumb-item>优秀教师</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <div style="margin-top:15px;width:500px">
                <el-input placeholder="请输入内容" v-model="checkItem" class="input-with-select" style="margin-left:100%">
                    <el-button slot="append" icon="el-icon-search" @click="getAllTeacherInfo"></el-button>
                </el-input>
            </div>
            <div style="float:right">
                <el-button @click="addTeacher">添加教师</el-button>
            </div>
            <div style="margin-top:5px">
                <el-table
                :data="page.tableData"
                style="width: 100%">
                <el-table-column
                    prop="uname"
                    label="名称"
                    width="180">
                </el-table-column>
                <el-table-column
                    prop="usex"
                    label="性别"
                    width="180">
                </el-table-column>
                <el-table-column
                    prop="uprofession"
                    label="职称/学位">
                </el-table-column>
                <el-table-column
                    prop="uphonenum"
                    label="联系方式">
                </el-table-column>
                <el-table-column
                    prop="uemail"
                    label="邮箱">
                </el-table-column>
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
        </div>
        <div style="width:1500px;margin: 0 auto" v-show="isShow">
            <teacherDesc
            ref="teacherdesc"
            >
            </teacherDesc>
        </div>
    </div>
</template>

<script>
    import TeacherDesc from './TeaDescInfo.vue';
    export default {
        name: '',
        components:{
            teacherDesc: TeacherDesc,
        },
        data() {
            return {
                // 获取有或无检索条件下的数据
                page:{
                    curPage:1,
                    pageSize:5,
                    totalRow:100,
                    tableData: [],
                },
                // 控制删除对话框的显示
                centerDialogVisible:false,
                // 页面加载时提示系统错误信息
                systemTip:'',
                // 用户查询条件
                checkItem:'',
                // 当数据库中没有数据时
                noData:false,
                isShow: false,
            }
        },
        methods: {
            goBack(){
                this.isShow = false;
            },
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
            // 查看用户选择的教师的详细信息
            handleClick(row) {
                // 将用户选择的教师的概略信息保存在cookie中
                sessionStorage.tea = row.uid + "";
                // this.$cookie.set("tea", row.uid + "");
                // this.$router.push("/teadescinfo");
                this.$refs.teacherdesc.getTeaInfo();
                this.isShow = true;
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
                const result = await this.$axios.get("user/deletetea?uid=" + this.needtodelete.uid);
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
                }
                this.needtodelete='';
                // 重新获取所有教师信息
                this.getAllTeacherInfo();
            },
            // 用户取消删除
            canceldelete(){
                this.needtodelete='';
                this.centerDialogVisible = false;
            },
            // 获取所有教师数据
            async getAllTeacherInfo(){
                const result = await this.$axios.get("/user/alltealimit?currentPage=" + this.page.curPage + "&pageSize=" + this.page.pageSize + "&key=" + this.checkItem);
                if (result.data.status == 200){
                    if (result.data.teachers.list.length > 0){
                        this.page.tableData = result.data.teachers.list;
                        this.noData = false;
                    }
                    this.page.totalRow=result.data.teachers.total;
                } else {
                    this.page.tableData = [];
                    this.page.totalRow=this.page.tableData.length;
                    this.$notify({
                        message: result.data.statusText,
                        type: 'error',
                    });
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
        computed:{
            isEm(){
                if (this.tableData.length == 0){
                    return true;
                } else {
                    return false;
                }
            }
        }
    }
</script>

<style scoped>
    
</style>