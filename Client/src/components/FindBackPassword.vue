<template>
    <div style="width:100%;height:100%;padding: 15px">
        <div style="width:600px;heigth:100%;margin: 0 auto">
            <div>
                <el-page-header @back="goBack" content="找回密码">
                </el-page-header>
            </div>
            <div style="margin-top:20px">
                <el-card class="box-card" v-if="inputInfo">
                    <div slot="header" class="clearfix">
                        <span>通过注册邮箱找回密码</span>
                    </div>
                    <div>
                        <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
                            <el-form-item label="用户名" prop="uloginid">
                                <el-input v-model="ruleForm.uloginid"></el-input>
                            </el-form-item>
                            <el-form-item label="Email" prop="uemail">
                                <el-input v-model="ruleForm.uemail"></el-input>
                            </el-form-item>
                            <el-form-item>
                                <el-button type="primary" @click="submitForm('ruleForm')">提交</el-button>
                                <el-button @click="resetForm('ruleForm')">重置</el-button>
                            </el-form-item>
                        </el-form>
                    </div>
                </el-card>
                <el-card class="box-card" v-if="inputNewPassword">
                    <div slot="header" class="clearfix">
                        <span>通过注册邮箱找回密码</span>
                    </div>
                    <div>
                        <el-form :model="newpassword" :rules="password" ref="newpassword" label-width="150px" class="demo-ruleForm">
                            <el-form-item label="请输入新的密码" type="password" prop="newPassword">
                                <el-input v-model="newpassword.newPassword" type="password"></el-input>
                            </el-form-item>
                            <el-form-item label="请再次输入新的密码" prop="reNewPassword">
                                <el-input v-model="newpassword.reNewPassword" type="password"></el-input>
                            </el-form-item>
                            <el-form-item label="验证码">
                                <el-input v-model="responseCodeShow"></el-input>
                            </el-form-item>
                            <el-form-item>
                                <el-button type="primary" @click="sureToUpdatePassword('newpassword')">提交</el-button>
                                <el-button @click="resetForm('newpassword')">重置</el-button>
                            </el-form-item>
                        </el-form>
                    </div>
                </el-card>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            // 验证邮箱
            var checkEmail = (rule, value, cb) => {
                const reg =/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
                if (value === "" || value == null){
                    return cb("请输入邮箱");
                }
                if (reg.test(value)){
                    return cb();
                } else {
                    cb("请输入合法的邮箱");
                }
            };   
            var checkUname = (rule, value, cb) => {
                const reg =/^[_a-zA-Z0-9]{6,32}$/;
                if (value === "" || value == null){
                    return cb("请输入用户名");
                }
                if (reg.test(value)){
                    return cb();
                } else {
                    cb("用户名仅由6~32位英文字母，数字以及下划线组成");
                }
            };
            return {
                ruleForm: {
                    uloginid: '',
                    uemail: '',
                },
                newpassword:{
                    newPassword: '',
                    reNewPassword: '',
                },
                rules: {
                    uloginid: [
                        { validator: checkUname, trigger: 'blur'},
                    ],
                    uemail: [
                         { validator: checkEmail, trigger: 'blur'},
                    ],
                },
                password: {
                    newPassword: [
                        { validator: checkUname, trigger: 'blur'},
                    ],
                    reNewPassword: [
                        //  { validator: checkEmail, trigger: 'blur'},
                    ],
                },
                inputInfo: true,
                inputNewPassword: false,
                responseCode: '',
                responseCodeShow: '',
            }
        },
        methods:{
            goBack() {
                this.$router.push("/login");
            },
            sureToUpdatePassword(formName) {
                if (this.newpassword.newPassword !== this.newpassword.reNewPassword){
                    this.$notify({
                        message: '两次输入的密码不一致',
                        type: 'error',
                    });
                    return false;
                }
                if (this.responseCode != this.responseCodeShow){
                    this.$notify({
                        message: '验证码不正确，请重新输入',
                        type: 'error',
                    });
                    return false;
                }
                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        this.submit();
                    } else {
                        return false;
                    }
                });
            },
            resetForm(formName) {
                this.$refs[formName].resetFields();
                this.responseCodeShow = "";
                this.responseCode = "";
            },
            submitForm(formName){
                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        this.getResponseCode();
                    } else {
                        return false;
                    }
                });
            },
            submit(){
                let item = {
                    uloginid: this.ruleForm.uloginid,
                    newpassword: this.$md5(this.$md5(this.newpassword.newPassword)),
                };
                // 向服务器发送请求，确认修改密码
                const result = this.$axios.post("user/updateupassword", item);
                result.then(response => {
                    if (response.data.status == 200){
                        this.$notify({
                            message: '密码修改成功',
                            type: 'success',
                        });
                        this.resetForm("newpassword");
                    } else {
                        this.$notify({
                            message: '网络错误',
                            type: 'error',
                        });
                    }
                });
            },
            getResponseCode(){
                // 向服务器发送请求，验证用户邮箱，并接收服务器返回码
                const result = this.$axios.post("user/checkemail", this.ruleForm);
                result.then(response => {
                    if (response.data.status == 200){
                        this.responseCode = response.data.responsecode;
                        this.inputInfo = false;
                        this.inputNewPassword = true;
                    } else {
                        this.$notify({
                            message: '网络错误',
                            type: 'error',
                        });
                    }
                });
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
    width: 600px;
  }
</style>