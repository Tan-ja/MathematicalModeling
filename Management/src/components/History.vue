<template>
    <div style="width:1500px;background-color:white;padding: 15px;margin: 0 auto">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div>
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>关于我们</el-breadcrumb-item>
                    <el-breadcrumb-item :to="{ path: '/history' }">发展历程</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <div>
                <el-card shadow="hover" class="history">
                    <div style="float:right">
                        <el-button @click="sureToAddHistory=true">添加发展历程</el-button>
                    </div>
                    <div class="block" style="margin-top:30px">
                    <el-timeline>
                        <el-timeline-item :timestamp="item.timey" placement="top"  type="primary" size="large" v-for="item in history" :key="item.id">
                        <el-card>
                            <div>
                                <font size="4px">{{item.timem}}月</font>&nbsp;{{item.event}}
                                <el-button type="danger" icon="el-icon-delete" style="float:right;margin-bottom:15px" circle @click="deleteHistory(item)"></el-button>
                                <el-button type="primary" icon="el-icon-edit" style="float:right;margin-right:10px;margin-bottom:15px" circle  @click="editHistory(item)"></el-button>
                            </div>
                        </el-card>
                        </el-timeline-item>
                    </el-timeline>
                    </div>
                </el-card>
            </div>
            <div>
                <el-dialog
                title="提示"
                :visible.sync="centerDialogVisible"
                width="30%"
                center>
                <span>确认删除吗?此操作将不可逆</span>
                <span slot="footer" class="dialog-footer">
                    <el-button @click="cancelDeleteHistory">取 消</el-button>
                    <el-button type="primary" @click="sureToDeleteHistory">确 定</el-button>
                </span>
                </el-dialog>
            </div>
            <div>
                <el-dialog
                title="您正在修改历史时间线"
                :visible.sync="sureToEditVisible"
                width="30%"
                center>
                <el-form :label-position="labelPosition" label-width="80px" :model="needToEdit">
                <el-form-item label="年">
                    <el-input v-model="needToEdit.timey"></el-input>
                </el-form-item>
                <el-form-item label="月">
                    <el-input v-model="needToEdit.timem"></el-input>
                </el-form-item>
                <el-form-item label="事件" prop="desc">
                    <el-input type="textarea" v-model="needToEdit.event"></el-input>
                </el-form-item>
                </el-form>
                <span slot="footer" class="dialog-footer">
                    <el-button @click="sureToEditVisible = false">取 消</el-button>
                    <el-button type="primary" @click="sureToEditorHistory">确认修改</el-button>
                </span>
                </el-dialog>
            </div>
            <div>
                <el-dialog
                title="添加新的发展历程"
                :visible.sync="sureToAddHistory"
                width="30%"
                center>
                <el-form :model="needAddHistory" status-icon :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
                <el-form-item label="年份" prop="timey">
                    <el-input type="text" v-model.number="needAddHistory.timey" autocomplete="off"></el-input>
                </el-form-item>
                <el-form-item label="月份" prop="timem">
                    <el-input type="text" v-model.number="needAddHistory.timem" autocomplete="off"></el-input>
                </el-form-item>
                <el-form-item label="事件" prop="event">
                    <!-- <el-input v-model.number="needAddHistory.event"></el-input> -->
                    <el-input
                    type="textarea"
                    :rows="2"
                    placeholder="请输入内容"
                    v-model="needAddHistory.event">
                    </el-input>
                </el-form-item>
                <el-form-item>
                    <el-button type="primary" @click="sureToAddHistory=false">取消</el-button>
                    <el-button type="primary" @click="submitForm('ruleForm')">提交</el-button>
                    <el-button @click="resetForm('ruleForm')">重置</el-button>
                </el-form-item>
                </el-form>
                </el-dialog>
            </div>
        </div>
    </div>
</template>

<script>
import LoginVue from './Login.vue';
    export default {
        name: '',
        data() {
            var checkTimey = (rule, value, callback) => {
                if (!value) {
                    return callback(new Error('年份不能为空'));
                }
                if (!Number.isInteger(value)) {
                    callback(new Error('请输入数字值'));
                } else {
                    callback();
                }
            };
            var checkEvent = (rule, value, callback) => {
                if (value === '') {
                    callback(new Error('请输入事件'));
                } else {
                    callback();
                }
            };
            var checkTimem = (rule, value, callback) => {
                if (!value) {
                    return callback(new Error('月份不能为空'));
                }
                if (!Number.isInteger(value)) {
                    callback(new Error('请输入数字值'));
                } else {
                    if (value > 12) {
                    callback(new Error('必须小于等于12'));
                    } else {
                    callback();
                    }
                }
            };
            return {
                history:[],
                // 存放管理员需要删除的历史线
                needToDelete:'',
                // 存放管理员需要修改的历史线
                needToEdit:'',
                // 添加新的发展历程
                needAddHistory:{
                    timey:'',
                    timem:'',
                    event:'',
                },
                // 控制删除对话框的显示
                centerDialogVisible:false,
                // 控制编辑历史线对话框的显示
                sureToEditVisible:false,
                // 控制添加新的发展历程对话框的显示
                sureToAddHistory:false,
                // 控制修改历史线对话框提示的位置
                labelPosition: 'left',
                rules: {
                    event: [
                        { validator: checkEvent, trigger: 'blur' }
                    ],
                    timey: [
                        { validator: checkTimey, trigger: 'blur' }
                    ],
                    timem: [
                        { validator: checkTimem, trigger: 'blur' }
                    ]
                },
            };
        },
        created(){
            this.getAllTeacherInfo();
        },
        methods:{
            // 获取所有发展历史数据
            async getAllTeacherInfo(){
                const result = await this.$axios.get("/history/allhistory");
                if (result.data.status == 200){
                    this.history=result.data.history;
                } else {
                    this.$message({
                        message: result.data.statusText,
                        type: 'error'
                    });
                }
            },
            // 编辑历史线
            editHistory(item){
                this.sureToEditVisible=true;
                this.needToEdit=item;
            },
            // 确认修改某条历史线
            async sureToEditorHistory(){
                // 关闭编辑某条历史线对话框
                this.sureToEditVisible=false;
                // 开始连接服务器确认修改某条历史线
                const result = await this.$axios.post("/history/modify", this.needToEdit);
                if (result.data.status == 200){
                    this.$message({
                        message: result.data.statusText,
                        type: 'success'
                    });
                } else {
                    this.$message({
                        message: result.data.statusText,
                        type: 'error'
                    });
                }
                // 重新从服务器获取所有的历史线
                this.getAllTeacherInfo();
            },
            // 删除某条历史线
            deleteHistory(item){
                this.centerDialogVisible=true;
                this.needToDelete=item;
            },
            // 确认删除某条历史线
            async sureToDeleteHistory(){
                // 关闭删除某条历史线对话框
                this.centerDialogVisible=false;
                // 开始删除某条历史线
                const result = await this.$axios.get("/history/deletehistory?id="+this.needToDelete.id);
                if (result.data.status == 200){
                    this.$message({
                        message: result.data.statusText,
                        type: 'success'
                    });
                } else {
                    this.$message({
                        message: result.data.statusText,
                        type: 'error'
                    });
                }
                // 删除成功后,重新获取历史线
                this.getAllTeacherInfo();
            },
            // 取消删除对话框的显示
            cancelDeleteHistory(){
                this.centerDialogVisible=false;
                this.needToDelete='';
            },
            async addHistory(){
                // 开始连接服务器进行新的发展历程的添加
                const result = await this.$axios.post("/history/addhistory", this.needAddHistory);
                if (result.data.status == 200){
                    this.$message({
                        message: result.data.statusText,
                        type: 'success'
                    });
                } else {
                    this.$message({
                        message: result.data.statusText,
                        type: 'error'
                    });
                }
                // 成功添加后重新获取所有的发展历程
                this.getAllTeacherInfo();
            },
            submitForm(formName) {
                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        this.addHistory();
                    } else {
                        this.$message({
                        message: "请输入正确格式的数据",
                        type: 'error'
                    });
                    }
                });
            },
            resetForm(formName) {
                this.$refs[formName].resetFields();
            }
        },
    }
</script>

<style scoped>
    .history{
        margin: 10px 0px 0px 10px;
    }
</style>