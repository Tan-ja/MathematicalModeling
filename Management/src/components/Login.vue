<template>
    <div class="login-container">
        <div class="top-div">
            <img :src="titleImage" alt="加载失败" style="width:160px;height:160px">
        </div>
        <div class="login-body">
            <el-form :model="account" :rules="rules" ref="loginForm" label-width="100px" class="demo-ruleForm">
                <el-form-item prop="uloginid">
                    <el-input v-model="account.uloginid" type="text" suffix-icon="el-icon-s-check" placeholder="请输入账号"></el-input>
                </el-form-item>
                <el-form-item prop="upassword">
                    <el-input v-model="account.upassword" type="password" placeholder="请输入密码" :show-password="true" @keyup.enter.native="login"></el-input>
                </el-form-item>
                <el-form-item>
                    <el-button type="info" :plain="true" @click="resetForm" size="small">重置</el-button>
                    <el-button type="primary" :plain="true" @click="login" size="small">登录</el-button>
                    <br/>
                    <!-- <label for=""><font color="blue">还没有账号?</font></label>
                    <router-link to="/registry">快速注册</router-link> -->
                </el-form-item>
            </el-form>
        </div>
    </div>
</template>
<script>
    export default {
        name: '',
        data() {
            return {
                account:{
                    uloginid:"",
                    upassword:"",
                },
                titleImage: this.$picURL + 'static/system/a8444047-373c-4511-9ee1-2660bb9e49e1.jpg',
                rules:{
                    uloginid: [
                        { required: true, message: '请输入账号', trigger: 'blur' },
                        { min: 6, max: 32, message: '长度在 6 到 32 个字符', trigger: 'blur' }
                    ],
                    upassword: [
                        { required: true, message: '请输入密码', trigger: 'blur' },
                        { min: 4, max: 20, message: '长度在 4 到 20 个字符', trigger: 'blur' }
                    ],
                }
            }
        },
        methods:{
            login(){
                // 转到主页面
                // 对账号和密码进行验证
                if(this.account.uloginid == "" || this.account.upassword == ""){
                    this.$message.error("请输入账号和密码");
                    return false;
                }
                let item = {
                    uloginid: this.account.uloginid,
                    upassword: this.$md5(this.$md5(this.account.upassword)),
                };
                if ((item.uloginid != "" || item.uloginid != null) && (item.upassword != "" || item.upassword != null)){
                    this.$refs.loginForm.validate(async valid => {
                        if(valid){
                            // 发送ajax请求
                            const result =await this.$axios.post("user/loginforadmind", item);
                            if (result.data.status == 200){
                                this.$message({
                                    message: '登录成功',
                                    type: 'success'
                                });
                                // sessionStorage.setItem("user",JSON.stringify(result.data.user));
                                sessionStorage.user = JSON.stringify(result.data.user);
                                // this.$cookie.set("user", JSON.stringify(result.data.user));
                                // this.$cookie.config('7d');
                                this.$router.push('/home');
                            } else {
                                if (result.data.status == 400){
                                    this.$message({
                                    message: '账号或密码错误',
                                    type: 'error'
                                    });
                                    return false;
                                } else if (result.data.status == 404){
                                    this.$message({
                                    message: '没有此账号',
                                    type: 'error'
                                    });
                                    return false;
                                } else if (result.data.status == 300){
                                    this.$message({
                                    message: result.data.statusText,
                                    type: 'error'
                                    });
                                    return false;
                                }
                            }
                        } else {
                            this.$message({
                                message: '账号或密码错误',
                                type: 'error'
                                });
                            return false;
                        }
                    });
                }
            },
            resetForm(){
                this.$refs.loginForm.resetFields();
            },
        }
    }
</script>

<style scoped>
    .login-container{
        padding-top: 200px;
        width: 450px;
        margin: auto;
        /* background-color:#385773;background-size: 100% 100%;background-position: center center;overflow: auto; */
    }
    .login-header{
        background-color: #409EFF;
        padding: 10px;
        color: #ffffff;
        font-weight: bold;
        letter-spacing: 1px;
    }
    .login-body{
        margin: auto;
    }
    .top-div{
        width: 160px;
        height: 160px;
        margin-left: 190px;
        margin-bottom: 35px;
    }
</style>