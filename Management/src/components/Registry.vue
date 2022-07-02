<template>
    <div class="login-container">
        <div class="login-body">
            <el-form :model="account" :label-position="labelPosition" :rules="rules" status-icon ref="account" label-width="100px" class="demo-ruleForm">
                <el-form-item prop="uloginid" label="用户名(字母、数字、下划线)">
                    <el-input name="用户名" v-model="account.uloginid" type="text" placeholder="请输入用户名(6~32个字符)" @blur="checkRepeat"></el-input>
                </el-form-item>
                <el-form-item label="性别">
                    <el-radio-group v-model="account.usersex">
                    <el-radio label="男"></el-radio>
                    <el-radio label="女"></el-radio>
                    </el-radio-group>
                </el-form-item>
                <el-form-item prop="usernickname" label="昵称">
                    <el-input v-model="account.usernickname" type="text"  placeholder="请输入昵称(4~16个字符)"></el-input>
                </el-form-item>
                <el-form-item label="头像">
                    <el-upload
                    class="avatar-uploader"
                    :action="action"
                    :show-file-list="false"
                    :on-success="handleAvatarSuccess"
                    :drag="drag"
                    :before-upload="beforeAvatarUpload">
                    <img v-if="imageUrl" :src="imageUrl" class="avatar">
                    <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                    </el-upload>
                </el-form-item>
                <el-form-item label="学号" prop="ustunum">
                    <el-input v-model="account.ustunum" type="text" placeholder="请输入学号"></el-input>
                </el-form-item>
                <el-form-item label="籍贯">
                    <el-input v-model="account.userfrom" type="text" placeholder="请输入籍贯"></el-input>
                </el-form-item>
                <el-form-item prop="uemail" label="邮箱">
                    <el-input v-model="account.uemail" type="text"  placeholder="请输入邮箱(可选项)"></el-input>
                </el-form-item>
                <el-form-item label="个性签名">
                    <el-input v-model="account.usersignature" type="text" placeholder="请输入个性签名(可选项)"></el-input>
                </el-form-item>
                <el-form-item prop="upassword" label="密码">
                    <el-input v-model="account.upassword" type="password" placeholder="请输入密码(4~20个字符)" :show-password="true"></el-input>
                </el-form-item>
                <el-form-item style="display: flex;justify-content: space-between">
                    <el-button type="success" size="small" @click="registry('account')">提交</el-button>
                    <el-button type="info" size="small"  @click="resetForm('account')">重置</el-button>
                </el-form-item>
            </el-form>
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
                if (value === ''){
                    cb();
                }
                if (value != '' && reg.test(value)){
                    return cb();
                } else if (value != '' && !reg.test(value)){
                    cb("请输入合法的邮箱");
                }
            };      
            // 验证用户名
            var checkUname = (rule, value, cb) => {
                const reg =/^[_a-zA-Z0-9]{6,32}$/;
                if (value === ''){
                    return cb(this.$message.error("请输入用户名"));
                }
                if (reg.test(value)){
                    return cb();
                } else {
                    cb(this.$message.error("仅由英文字母，数字以及下划线组成"));
                }
            };
            return {
                labelPosition: "top",
                account:{
                    usersex:"",
                    usernickname:"",
                    userfaceaddress:"",
                    userfrom:"",
                    uemail:"",
                    usersignature:"",
                    uloginid:"",
                    upassword:"",
                    uonline:"",
                    urole: '',
                    ustunum: '',
                },
                localImg:"",
                rules:{
                    uloginid: [ // 用户名验证规则
                        { validator: checkUname, trigger: 'blur'},
                    ],
                    upassword: [ // 密码验证规则
                        { required: true, message: '请输入密码', trigger: 'blur' },
                        { min: 4, max: 20, message: '长度在 4 到 20 个字符', trigger: 'blur' }
                    ],
                    usernickname: [ // 昵称验证规则
                        { required: true, message: '请输入昵称', trigger: 'blur' },
                        { min: 4, max: 16, message: '长度在 4 到 16 个字符', trigger: 'blur' },
                    ],
                    ustunum: [ // 昵称验证规则
                        { required: true, message: '请输入学号', trigger: 'blur' },
                        { min: 13, max: 13, message: '长度在13个字符', trigger: 'blur' },
                    ],
                    uemail:[
                        { validator: checkEmail, trigger: 'blur'},
                    ],
                },
                timer:"",
                canRegistry:false,
                imageUrl: '',
                action:this.$baseURL + 'upload/postfile?uloginid=' + "aaaaaaaaaa",
                response:'',
                drag: true,
            }      
        },
        methods:{
            registry(formName){
                this.account.userfaceaddress=this.response;
                this.$refs[formName].validate(async valid => {
                    if (valid){
                        const result = this.$axios.post("user/registryforadmind", this.account);
                        result.then(response => {
                            if (response.data.status == 200){
                                this.backafterthreesecond();
                            }
                        });
                    }
                });
            },
            resetForm(formName){
                this.account.usernickname = "";
                this.account.usersignature = "";
                this.account.uemail = "";
                this.account.userfrom = "";
                this.$refs[formName].resetFields();
            },
            back(){
                this.$router.push("/login");
            },
            backafterthreesecond(){
                this.$message.success("注册成功,3秒后转到登录页面")
                return setTimeout(() => {
                    this.back();
                },3000);
            },
            checkRepeat(){
                const result = this.$axios.get("user/checkrepeat?uloginid=" + this.account.uloginid);
                result.then(response => {
                    if (response.data.status == 200){
                        return true;
                    } else if (response.data.status == 201){
                        this.$message({
                            message:'用户已存在',
                            type:'error',
                        });
                        return false;
                    }
                });
            },
            handleAvatarSuccess(response, file) {
                this.imageUrl = URL.createObjectURL(file.raw);
                this.response=response;
            },
            beforeAvatarUpload(file) {
                if (this.account.uloginid == null || this.account.uloginid == ''){
                    this.$message({
                        message:'请先输入用户名',
                        type:'error',
                    });
                    return false;
                }
                const isJPG = file.type === 'image/jpeg';
                const isLt2M = file.size / 1024 / 1024 < 10;

                if (!isJPG) {
                this.$message.error('上传头像图片只能是 JPG 格式!');
                }
                if (!isLt2M) {
                this.$message.error('上传头像图片大小不能超过 10MB!');
                }
                return isJPG && isLt2M;
            },
        },
        beforeDestroy(){
            clearTimeout(this.timer);
        },
    }
</script>

<style scoped>
    .login-container{
        width: 1000px;
        margin: 0 auto;
        background-color: white;
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
    /* 
        用户头像上传
     */
     .avatar-uploader .el-upload {
    border: 1px dashed #d9d9d9;
    border-radius: 6px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
  }
  .avatar-uploader .el-upload:hover {
    border-color: #409EFF;
  }
  .avatar-uploader-icon {
    font-size: 28px;
    color: #8c939d;
    width: 178px;
    height: 178px;
    line-height: 178px;
    text-align: center;
  }
  .avatar {
    width: 178px;
    height: 178px;
    display: block;
  }
</style>