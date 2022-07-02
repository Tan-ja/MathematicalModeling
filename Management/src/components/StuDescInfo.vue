<template>
    <div style="width:100%;height:100%;padding: 15px;background-color: white">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div>
                <el-page-header @back="goBack" content="学生详情">
                </el-page-header>
            </div>
            <div style="width:1500px;margin-top:50px">
                <el-card class="box-card">
                    <div slot="header" class="clearfix" style="width:240px;margin: 0 auto" v-if="!sureToUpdate">
                        <el-image :src="picURL + stuInfoForShow.sfaceaddress" style="width:240px;height:200px"></el-image>
                    </div>
                    <div>
                        <el-button style="float: right" size="mini" type="primary" @click="updateNewValue" v-show="!sureToUpdate">修改</el-button>
                        <el-button style="float: right" size="mini" type="primary" @click="updateNewValue" v-show="sureToUpdate">取消修改</el-button>
                    </div>
                    <!-- 展示教师信息 -->
                    <div style="margin-top:40px" v-show="!sureToUpdate">
                        <el-form :model="stuInfoForShow" :rules="rules" ref="stuInfoForShow" label-width="100px" class="demo-ruleForm">
                            <el-form-item label="学生姓名">
                                <el-input v-model="stuInfoForShow.sname" readonly></el-input>
                            </el-form-item>
                            <el-form-item label="性别">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForShow.sex" readonly></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="籍贯">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForShow.snativeplace" readonly></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="出生日期" prop="sbirthday">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForShow.sbirthday" readonly></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="政治面貌">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForShow.spoland" readonly></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="专业">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForShow.sgrade" readonly></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="座右铭">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForShow.smotto" readonly></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="干部级别">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForShow.sposition" readonly></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="添加时间">
                                <!-- <el-col :span="11"> -->
                                    <el-form-item>
                                        <el-date-picker type="date" placeholder="选择日期" v-model="stuInfoForShow.sdate" style="width: 100%;" readonly></el-date-picker>
                                    </el-form-item>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="所在学院">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForShow.sfrom" readonly></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="更多信息">
                                <p class="ql-editor" v-html="stuInfoForShow.sachieve"></p>
                            </el-form-item>
                        </el-form>
                    </div>
                    <!-- 修改教师信息 -->
                    <div style="margin-top:40px" v-show="sureToUpdate">   
                        <el-form :model="stuInfoForUpdate" :rules="rules" ref="stuInfoForUpdate" label-width="100px" class="demo-ruleForm">
                            <el-form-item label="头像">
                                    <el-upload
                                    class="avatar-uploader"
                                    drag
                                    :action="action"
                                    :show-file-list="false"
                                    :on-success="handleAvatarSuccess"
                                    :before-upload="beforeAvatarUpload">
                                    <img v-if="imageUrl" :src="imageUrl" class="avatar">
                                    <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                                    </el-upload>  
                            </el-form-item>
                            <el-form-item label="学生姓名" prop="sname">
                                    <el-input v-model="stuInfoForUpdate.sname"></el-input>
                            </el-form-item>
                            <el-form-item label="性别" prop="sex">
                                <el-select v-model="stuInfoForUpdate.sex" placeholder="请选择学生性别" readonly>
                                    <el-option label="男" value="男"></el-option>
                                    <el-option label="女" value="女"></el-option>
                                </el-select>
                            </el-form-item>
                            <el-form-item label="籍贯" prop="snativeplace">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForUpdate.snativeplace"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="出生日期" prop="sbirthday">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForUpdate.sbirthday"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="政治面貌" prop="spoland">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForUpdate.spoland"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="专业" prop="sgrade">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForUpdate.sgrade"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="座右铭">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForUpdate.smotto"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="头像地址" prop="sfaceaddress">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForUpdate.sfaceaddress"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="干部级别" prop="sposition">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForUpdate.sposition"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="添加时间" prop="sdate">
                                <!-- <el-col :span="11"> -->
                                    <el-form-item>
                                        <el-date-picker type="date" placeholder="选择日期" v-model="stuInfoForUpdate.sdate" style="width: 100%;"></el-date-picker>
                                    </el-form-item>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="信息来源" prop="sfrom">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="stuInfoForUpdate.sfrom"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="更多信息" prop="sachieve">
                                <ucomment 
                                    :con="stuInfoForUpdate.sachieve" 
                                    v-on:updateCommnetValue="updateCommnetValue"
                                    style="width:100%;height:100%" 
                                    ref="des"
                                    >
                                </ucomment>
                            </el-form-item>
                            <el-form-item>
                                <el-button type="primary" @click="submitForm('stuInfoForUpdate')">确认修改</el-button>
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
                stuInfoForShow:{},
                stuInfoForUpdate:{},
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
                    sfaceaddress: [
                        { required: true, message: '请输入学生头像地址', trigger: 'blur' }
                    ],
                    sachieve: [
                        { required: false, message: '请输入学生获得的奖励/证书', trigger: 'blur' }
                    ],
                    sdate: [
                        { required: true, message: '请输入学生信息创建时间', trigger: 'blur' }
                    ],
                    sfrom: [
                        { required: true, message: '请输入学生所在学院', trigger: 'blur' }
                    ],
                    sposition: [
                        { required: false, message: '请输入学生担任的干部级别', trigger: 'blur' }
                    ],
                },
                action: '',
                picURL: '',
                imageUrl: '',
                oldStuFaceAddress: '',
            }
        },
        created(){
            this.getSeaInfo();
        },
        methods:{
            async getSeaInfo(){
                let Sid = sessionStorage.sea;
                if (Sid == '' || Sid == null){
                    return false;
                }
                const result = await this.$axios.get("user/teaorstuinfo?id=" + "S:" + Sid);
                if (result.data.status == 200){
                    this.stuInfoForShow = result.data.teaorstu;
                    this.stuInfoForUpdate = result.data.teaorstu;
                    this.picURL = this.$picURL;
                    this.action = this.$baseURL + "upload/uploadstupic";
                    this.imageUrl = this.$picURL + this.stuInfoForUpdate.sfaceaddress;
                    this.oldStuFaceAddress = this.stuInfoForUpdate.sfaceaddress;
                } else {
                    this.noData=true;
                }
            },
            goBack(){
                // this.$router.push("/studentdescinfo");
                this.sureToUpdate = false;
                this.$parent.goBack();
            },
            submitForm(formName) {
                this.$refs.des.submit();
                this.$refs[formName].validate((valid) => {
                if (valid) {
                    this.updateStuInfo();
                } else {
                    this.$message({
                        message:'修改失败',
                        type:'error',
                    });
                    return false;
                }
                });
            },
            async updateStuInfo(){
                const result = await this.$axios.post("user/updatestu", this.stuInfoForUpdate);
                if (result.data.status == 200){
                    this.$message({
                        message:result.data.statusText,
                        type:'success',
                    });
                    this.stuInfoForShow = this.sureToUpdate;
                } else {
                    this.$message({
                        message:result.data.statusText,
                        type:'error',
                    });
                }
            },
            updateCommnetValue(newValue){
                this.stuInfoForUpdate.sachieve = newValue;
            },
            updateNewValue(){
                this.sureToUpdate = !this.sureToUpdate;
                this.$refs.des.updateCommnetValue(this.stuInfoForUpdate.sachieve);
            },
            handleAvatarSuccess(res, file) {
                this.imageUrl = URL.createObjectURL(file.raw);
                this.stuInfoForUpdate.sfaceaddress = res;
                this.$axios.get("upload/deleteuploadfile?category=studentpic&filepath=" + this.oldStuFaceAddress);
                this.oldStuFaceAddress = this.stuInfoForUpdate.sfaceaddress;
                this.stuInfoForShow.sfaceaddress = this.stuInfoForUpdate.sfaceaddress;
            },
            beforeAvatarUpload(file) {
                const isJPG = file.type === 'image/jpg';
                const isJPEG = file.type === 'image/jpeg';
                const isPNG = file.type === 'image/png';
                const isLt2M = file.size / 1024 / 1024 < 10;
                if (!isJPG && !isJPEG && !isPNG) {
                    this.$message.error('上传头像图片只能是 JPG|JPEG|PNG 格式!');
                }
                if (!isLt2M) {
                    this.$message.error('上传头像图片大小不能超过 10MB!');
                }
                return (isJPEG || isJPEG || isPNG) && isLt2M;
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
    width: 100%;
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