<template>
    <div style="width:1500px;padding: 15px;background-color: white;margin: 0 auto">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div>
                <el-page-header @back="goBack" content="添加教师">
                </el-page-header>
            </div>
            <div>
                <el-card class="box-card">
                    <div slot="header" class="clearfix">
                        <span>新教师信息</span>
                    </div>
                    <div>
                        <el-form :model="teaInfo" :rules="rules" ref="teaInfo" label-width="100px" class="demo-ruleForm">
                            <el-form-item label="教师姓名" prop="uname">
                                    <el-input v-model="teaInfo.uname"></el-input>
                            </el-form-item>
                            <el-form-item label="职称/学位" prop="uprofession">
                                <el-select v-model="teaInfo.uprofession" placeholder="请选择教师职称/学位">
                                    <el-option label="教授" value="教授"></el-option>
                                    <el-option label="副教授" value="副教授"></el-option>
                                    <el-option label="博士" value="博士"></el-option>
                                    <el-option label="讲师" value="讲师"></el-option>
                                    <el-option label="硕士" value="硕士"></el-option>
                                </el-select>
                            </el-form-item>
                            <el-form-item label="添加时间" prop="udate">
                                <!-- <el-col :span="11"> -->
                                    <el-form-item prop="date1">
                                        <el-date-picker type="date" placeholder="选择日期" v-model="teaInfo.udate" style="width: 100%;"></el-date-picker>
                                    </el-form-item>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="性别" prop="usex">
                                <el-radio-group v-model="teaInfo.usex">
                                    <el-radio label="男"></el-radio>
                                    <el-radio label="女"></el-radio>    
                                </el-radio-group>
                            </el-form-item>
                            <el-form-item label="籍贯" prop="unativeplace">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfo.unativeplace"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="现工作单位" prop="uaddress">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfo.uaddress"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="联系方式" prop="uphonenum">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfo.uphonenum"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="邮箱" prop="uemail">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfo.uemail"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="头像">
                                <div class="avatar-uploader">
                                    <el-upload
                                    class="avatar-uploader"
                                    :action="action"
                                    :show-file-list="false"
                                    :on-success="handleAvatarSuccess"
                                    :before-upload="beforeAvatarUpload">
                                    <img v-if="imageUrl" :src="imageUrl" class="avatar">
                                    <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                                    </el-upload>
                                </div>
                            </el-form-item>
                            <el-form-item label="简介" prop="uintroduction">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfo.uintroduction"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="学院" prop="ufrom">
                                <el-select v-model="teaInfo.ufrom" placeholder="请选择学院">
                                    <el-option label="地球科学学院" value="地球科学学院"></el-option>
                                    <el-option label="环境科学与工程学院" value="环境科学与工程学院"></el-option>
                                    <el-option label="土木与建筑工程学院" value="土木与建筑工程学院"></el-option>
                                    <el-option label="测绘地理信息学院" value="测绘地理信息学院"></el-option>
                                    <el-option label="材料科学与工程学院" value="材料科学与工程学院"></el-option>
                                    <el-option label="化学与生物工程学院" value="化学与生物工程学院"></el-option>
                                    <el-option label="信息科学与工程学院" value="信息科学与工程学院"></el-option>
                                    <el-option label="机械与控制工程学院" value="机械与控制工程学院"></el-option>
                                    <el-option label="珠宝学院" value="珠宝学院"></el-option>
                                    <el-option label="商学院" value="商学院"></el-option>
                                    <el-option label="旅游与风景园林学院" value="旅游与风景园林学院"></el-option>
                                    <el-option label="外国语学院" value="外国语学院"></el-option>
                                    <el-option label="理学院" value="理学院"></el-option>
                                    <el-option label="公共管理与传媒学院" value="公共管理与传媒学院"></el-option>
                                    <el-option label="艺术学院" value="艺术学院"></el-option>
                                    <el-option label="南宁分校" value="南宁分校"></el-option>
                                </el-select>
                            </el-form-item>
                            <el-form-item label="更多信息" prop="udesc">
                                <ucomment 
                                :con="teaInfo.udesc" 
                                v-on:updateCommnetValue="updateCommnetValue"
                                style="width:100%;height:100%" 
                                ref="uc"
                                >
                                </ucomment>
                            </el-form-item>
                            <el-form-item>
                                <el-button type="primary" @click="submitForm('teaInfo')">确认添加</el-button>
                            </el-form-item>
                        </el-form>
                    </div>
                </el-card>
            </div>
        </div>
    </div>
</template>
<script>
    import UserCommentEditor from './WangEditor.vue';
    export default {
        name: '',
        name: '',
        components:{
            ucomment: UserCommentEditor,
        },
        data() {
            // 验证邮箱
            var checkEmail = (rule, value, cb) => {
                const reg =/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
                if (value == "" || value == null){
                    return cb();
                }
                if (reg.test(value)){
                    return cb();
                }
                cb(new Error("请输入合法的邮箱"));
            }; 
            return {
                teaInfo:{
                    uname:'',
                    usex:'',
                    uprofession:'',
                    unativeplace:'',
                    uintroduction:'',
                    uaddress:'',
                    uphonenum:'',
                    uemail:'',
                    ufaceaddress:'',
                    udesc:'',
                    udate:'',
                    ufrom:'',
                    ucomment:0,
                    ureaders:0,
                },
                rules: {
                    uname: [
                        { required: true, message: '请输入教师姓名', trigger: 'blur' },
                    ],
                    usex: [
                        { required: true, message: '请输入教师性别', trigger: 'change' }
                    ],
                    uprofession: [
                        { required: true, message: '请输入教师职称/学位', trigger: 'change' }
                    ],
                    unativeplace: [
                        { required: true, message: '请输入教师籍贯', trigger: 'change' }
                    ],
                    uintroduction: [
                        { required: false, message: '请输入教师简介', trigger: 'change' }
                    ],
                    uaddress: [
                        { required: true, message: '请输入教师现工作单位', trigger: 'change' }
                    ],
                    uphonenum: [
                        { required: true, message: '请输入教师联系方式', trigger: 'blur' }
                    ],
                    uemail: [
                        { validator: checkEmail, trigger: 'blur'},
                    ],
                    udesc: [
                        { required: false, message: '请输入教师详细信息', trigger: 'blur' }
                    ],
                    udate: [
                        { type: 'date', required: true, message: '请输入新教师信息创建时间', trigger: 'blur' }
                    ],
                    ufrom: [
                        { required: true, message: '请输入新教师所在学院', trigger: 'blur' }
                    ],
                },
                imageUrl: '',
                action: '',
            }
        },
        methods:{
            goBack(){
                this.$router.push('/teacherdescinfo');
            },
            submitForm(formName) {
                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        this.addTea();
                    } else {
                        return false;
                    }
                });
            },
            resetForm(formName) {
                this.$refs[formName].resetFields();
            },
            async addTea(){
                this.$refs.uc.submit();
                let udate = new Date(this.teaInfo.udate);
                let month = udate.getMonth() < 10? "0" + udate.getMonth(): udate.getMonth();
                let newUdate = `${udate.getFullYear()}-${month}-${udate.getDay()}`;
                this.teaInfo.udate=newUdate;
                this.$refs.uc.submit();
                const result = await this.$axios.post("user/addtea", this.teaInfo);
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
            },
            updateCommnetValue(newValue){
                this.teaInfo.udesc = newValue;
            },
            handleAvatarSuccess(res, file) {
                this.imageUrl = URL.createObjectURL(file.raw);
            },
            beforeAvatarUpload(file) {
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
        created(){
            this.action=this.$baseURL + 'upload/postfile';
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
    margin-top: 30px;
    width: 1500px;
    height: 100%;
  }
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