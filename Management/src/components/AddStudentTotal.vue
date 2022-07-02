<template>
    <div style="width:1500px;padding: 15px;background-color: white;margin: 0 auto">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div>
                <el-page-header @back="goBack" content="添加学生">
                </el-page-header>
            </div>
            <div>
                <el-card class="box-card">
                    <div slot="header" class="clearfix">
                        <span>新学生信息</span>
                    </div>
                    <!-- 修改教师信息 -->
                    <div>   
                        <el-form :model="stuInfo" :rules="rules" ref="stuInfo" label-width="100px" class="demo-ruleForm">
                            <el-form-item label="学生姓名" prop="sname">
                                    <el-input v-model="stuInfo.sname"></el-input>
                            </el-form-item>
                            <el-form-item label="性别" prop="sex">
                                <el-radio-group v-model="stuInfo.sex">
                                <el-radio label="男"></el-radio>
                                <el-radio label="女"></el-radio>
                                </el-radio-group>
                            </el-form-item>
                            <el-form-item label="籍贯" prop="snativeplace">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfo.snativeplace"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="出生日期" prop="sbirthday">
                                <!-- <el-col :span="11"> -->
                                    <el-form-item prop="date1">
                                        <el-date-picker type="date" placeholder="选择日期" v-model="stuInfo.sbirthday" style="width: 100%;"></el-date-picker>
                                    </el-form-item>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="政治面貌" prop="spoland">
                                <el-select v-model="stuInfo.spoland" placeholder="请选择政治面貌">
                                    <el-option label="共青团员" value="共青团员"></el-option>
                                    <el-option label="中共党员" value="中共党员"></el-option>
                                    <el-option label="预备党员" value="普通群众"></el-option>
                                    <el-option label="群众" value="普通群众"></el-option>
                                </el-select>
                            </el-form-item>
                            <el-form-item label="专业" prop="sgrade">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfo.sgrade"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="座右铭">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfo.smotto"></el-input>
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
                            <el-form-item label="干部级别" prop="sposition">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfo.sposition"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="添加时间" prop="sdate">
                                <!-- <el-col :span="11"> -->
                                    <el-form-item>
                                        <el-date-picker type="date" placeholder="选择日期" v-model="stuInfo.sdate" style="width: 100%;"></el-date-picker>
                                    </el-form-item>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="信息来源" prop="sfrom">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfo.sfrom"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="更多信息" prop="sachieve">
                                <ucomment 
                                :con="stuInfo.sachieve" 
                                v-on:updateCommnetValue="updateCommnetValue"
                                style="width:100%;height:100%" 
                                ref="uc"
                                >
                                </ucomment>
                            </el-form-item>
                            <el-form-item>
                                <el-button type="primary" @click="submitForm('stuInfo')">确认添加</el-button>
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
        components:{
            ucomment: UserCommentEditor,
        },
        data() {
            return {
                sureToUpdate:false,
                stuInfo:{
                    sname:'',
                    sex:'',
                    snativeplace:'',
                    sbirthday:'',
                    spoland:'',
                    sgrade:'',
                    smotto:'',
                    sfaceaddress:'',
                    sachieve:'',
                    sposition:'',
                    sdate:'',
                    sfrom:'',
                    scomment:0,
                    sreaders:0,
                },
                rules: {
                    sname: [
                        { required: true, message: '请输入学生姓名', trigger: 'blur' },
                    ],
                    sex: [
                        { required: true, message: '请选择学生性别', trigger: 'change' }
                    ],
                    snativeplace: [
                        { required: true, message: '请输入学生籍贯', trigger: 'change' }
                    ],
                    sbirthday: [
                        { required: false, message: '请输入学生出生日期', trigger: 'change' }
                    ],
                    spoland: [
                        { required: false, message: '请输入学生政治面貌', trigger: 'change' }
                    ],
                    sgrade: [
                        { required: true, message: '请输入学生专业班级', trigger: 'change' }
                    ],
                    smotto: [
                        { required: false, message: '请输入学生座右铭', trigger: 'blur' }
                    ],
                    sachieve: [
                        { required: false, message: '请输入学生获得的奖励/证书', trigger: 'blur' }
                    ],
                    sdate: [
                        { type: 'date', required: true, message: '请输入学生信息创建时间', trigger: 'blur' }
                    ],
                    sfrom: [
                        { required: true, message: '请输入学生所在学院', trigger: 'blur' }
                    ],
                    sposition: [
                        { required: false, message: '请输入学生担任的干部级别', trigger: 'blur' }
                    ],
                },
                action: '',
                imageUrl: '',
            }
        },
        methods:{
            submitForm(formName) {
                this.$refs[formName].validate((valid) => {
                if (valid) {
                    this.sureAddStudent();
                } else {
                    this.$message({
                        message:'添加失败',
                        type:'error',
                    });
                    return false;
                }
                });
            },
            async sureAddStudent(){
                this.$refs.uc.submit();
                let sdate = new Date(this.stuInfo.sdate);
                let month = sdate.getMonth() < 10? "0" + sdate.getMonth(): sdate.getMonth();
                let newSdate = `${sdate.getFullYear()}-${month}-${sdate.getDay()}`;
                this.stuInfo.sdate=newSdate;
                let sbirthday = new Date(this.stuInfo.sbirthday);
                month = sbirthday.getMonth() < 10? "0" + sbirthday.getMonth(): sbirthday.getMonth();
                let newSbirthday = `${sbirthday.getFullYear()}-${month}-${sbirthday.getDay()}`;
                this.stuInfo.sbirthday=newSbirthday;
                this.$refs.uc.submit();
                const result = await this.$axios.post("user/addstu", this.stuInfo);
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
                this.stuInfo.sachieve = newValue;
            },
            goBack(){
                this.$router.push("/studentdescinfo");
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