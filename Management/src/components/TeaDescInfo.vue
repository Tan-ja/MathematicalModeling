<template>
    <div style="width:100%;height:100%;padding: 15px;background-color: white">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div>
                <el-page-header @back="goBack" content="教师详情">
                </el-page-header>
            </div>
            <div style="width:1500px;height:100%;margin-top:50px">
                <el-card class="box-card">
                    <div slot="header" class="clearfix" style="width:400px;height:100%;margin: 0 auto" v-if="!sureToUpdate">
                        <el-image :src="picURL + teaInfoForShow.ufaceaddress" style="width:240px;height:200px;"></el-image>
                    </div>
                    <div>
                        <el-button style="float: right" size="mini" type="primary" @click="updateNewValue" v-show="!sureToUpdate">修改</el-button>
                        <el-button style="float: right" size="mini" type="primary" @click="updateNewValue" v-show="sureToUpdate">取消修改</el-button>
                    </div>
                    <!-- 展示教师信息 -->
                    <div style="margin-top:40px" v-show="!sureToUpdate">
                        <el-form :model="teaInfoForShow" :rules="rules" ref="teaInfoForShow" label-width="100px" class="demo-ruleForm">
                            <el-form-item label="教师姓名">
                                <el-input v-model="teaInfoForShow.uname" readonly></el-input>
                            </el-form-item>
                            <el-form-item label="职称/学位">
                                <el-input v-model="teaInfoForShow.uprofession" readonly></el-input>
                            </el-form-item>
                            <el-form-item label="添加时间">
                                <!-- <el-col :span="11"> -->
                                    <el-form-item>
                                        <el-date-picker type="date" placeholder="选择日期" v-model="teaInfoForShow.udate" style="width: 100%;" readonly></el-date-picker>
                                    </el-form-item>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="性别">
                                <el-input v-model="teaInfoForShow.usex" readonly></el-input>
                            </el-form-item>
                            <el-form-item label="籍贯">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfoForShow.unativeplace" readonly></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="现工作单位">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfoForShow.uaddress" readonly></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="联系方式">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfoForShow.uphonenum" readonly></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="邮箱">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfoForShow.uemail" readonly></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="简介">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfoForShow.uintroduction" readonly></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="学院">
                                <el-select v-model="teaInfoForShow.ufrom" placeholder="请选择学院" readonly>
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
                            <el-form-item label="更多信息">
                                <p v-html="teaInfoForShow.udesc" class="ql-editor"></p>
                            </el-form-item>
                        </el-form>
                    </div>
                    <!-- 修改教师信息 -->
                    <div style="margin-top:40px" v-show="sureToUpdate">
                         
                        <el-form :model="teaInfoForUpdate" :rules="rules" ref="teaInfoForUpdate" label-width="100px" class="demo-ruleForm">
                            <el-form-item label="头像">
                                <el-upload
                                class="avatar-uploader"
                                auto-upload
                                :action="action"
                                :show-file-list="false"
                                :on-success="handleAvatarSuccess"
                                :before-upload="beforeAvatarUpload">
                                <img v-if="imageUrl" :src="imageUrl" class="avatar">
                                <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                                </el-upload>  
                            </el-form-item>
                            <el-form-item label="教师姓名" prop="uname">
                                    <el-input v-model="teaInfoForUpdate.uname"></el-input>
                            </el-form-item>
                            <el-form-item label="职称/学位" prop="uprofession">
                                <el-select v-model="teaInfoForUpdate.uprofession" placeholder="请选择教师职称/学位">
                                    <el-option label="教授" value="教授"></el-option>
                                    <el-option label="副教授" value="副教授"></el-option>
                                    <el-option label="博士" value="博士"></el-option>
                                </el-select>
                            </el-form-item>
                            <el-form-item label="添加时间" prop="udate">
                                <!-- <el-col :span="11"> -->
                                    <el-form-item prop="date1">
                                        <el-date-picker type="date" placeholder="选择日期" v-model="teaInfoForUpdate.udate" style="width: 100%;"></el-date-picker>
                                    </el-form-item>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="性别" prop="usex">
                                <el-radio-group v-model="teaInfoForUpdate.usex">
                                    <el-radio label="男"></el-radio>
                                    <el-radio label="女"></el-radio>    
                                </el-radio-group>
                            </el-form-item>
                            <el-form-item label="籍贯">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfoForUpdate.unativeplace"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="现工作单位">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfoForUpdate.uaddress"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="联系方式">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfoForUpdate.uphonenum"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="邮箱">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfoForUpdate.uemail"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="简介" prop="uintroduction">
                                <!-- <el-col :span="11"> -->
                                    <el-input v-model="teaInfoForUpdate.uintroduction"></el-input>
                                <!-- </el-col> -->
                            </el-form-item>
                            <el-form-item label="学院" prop="ufrom">
                                <el-select v-model="teaInfoForUpdate.ufrom" placeholder="请选择学院">
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
                            <el-form-item label="更多信息">
                                <ucomment 
                                :con="teaInfoForUpdate.udesc" 
                                v-on:updateCommnetValue="updateCommnetValue"
                                style="width:100%;height:100%" 
                                ref="des"
                                >
                                </ucomment>
                            </el-form-item>
                            <el-form-item>
                                <el-button type="primary" @click="submitForm('teaInfoForUpdate')">确认修改</el-button>
                            </el-form-item>
                        </el-form>
                    </div>
                </el-card>
            </div>
        </div>
    </div>
</template>

<script>
    import UserCommentEditor from './Editor.vue';
    import WangEditor from './WangEditor.vue';
    export default {
        name: '',
        components:{
            ucomment: WangEditor,
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
                sureToUpdate:false,
                teaInfoForUpdate:{},
                teaInfoForShow:{},
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
                    udate: [
                        { required: true, message: '请输入新教师信息创建时间', trigger: 'blur' }
                    ],
                    ufrom: [
                        { required: true, message: '请输入新教师所在学院', trigger: 'blur' }
                    ],
                },
                action: '',
                picURL: '',
                imageUrl: '',
                teacherOldFaceaddress: '',
            }
        },
        created(){
            this.getTeaInfo();
        },
        methods:{
            async getTeaInfo(){
                let tid = sessionStorage.tea;
                if (tid == '' || tid == null){
                    return false;
                }
                const result = await this.$axios.get("user/teaorstuinfo?id=" + "T:" + tid);
                if (result.data.status == 200){
                    this.teaInfoForUpdate = result.data.teaorstu;
                    this.teaInfoForShow = result.data.teaorstu;
                    this.picURL = this.$picURL;
                    this.action = this.$baseURL + "upload/uploadteapic";
                    this.imageUrl = this.$picURL + this.teaInfoForUpdate.ufaceaddress;
                    this.teacherOldFaceaddress = this.teaInfoForUpdate.ufaceaddress;
                } else {
                    this.noData=true;
                }
            },
            goBack(){
                this.sureToUpdate = false;
                // this.$router.push("teacherdescinfo");
                this.$parent.goBack();
            },
            submitForm(formName) {
                this.$refs.des.submit();
                this.$refs[formName].validate((valid) => {
                if (valid) {
                    this.updateTeaInfo();
                } else {
                    this.$message({
                        message:'修改失败',
                        type:'error',
                    });
                    return false;
                }
                });
            },
            async updateTeaInfo(){
                const result = await this.$axios.post("user/updatetea", this.teaInfoForUpdate);
                if (result.data.status == 200){
                    this.$message({
                        message:result.data.statusText,
                        type:'success',
                    });
                    this.teaInfoForShow = this.teaInfoForUpdate;
                } else {
                    this.$message({
                        message:result.data.statusText,
                        type:'error',
                    });
                }
            },
            updateCommnetValue(newValue){
                this.teaInfoForUpdate.udesc = newValue;
            },
            updateNewValue(){
                this.sureToUpdate = !this.sureToUpdate;
                this.$refs.des.updateCommnetValue(this.teaInfoForUpdate.udesc);
            },
            handleAvatarSuccess(res, file) {
                this.imageUrl = URL.createObjectURL(file.raw);
                this.teaInfoForUpdate.ufaceaddress = res;
                console.log(res);
                this.$axios.get("upload/deleteuploadfile?category=teacherpic&filepath=" + this.teacherOldFaceaddress);
                this.teacherOldFaceaddress = this.teaInfoForUpdate.ufaceaddress;
                this.teaInfoForShow.ufaceaddress = this.teaInfoForUpdate.ufaceaddress;
            },
            beforeAvatarUpload(file) {
                const isJPG = file.type === 'image/jpeg';
                const isJPEG = file.type === 'image/jpg';
                const isPNG = file.type === 'image/png';
                const isLt2M = file.size / 1024 / 1024 < 10;

                if (!isJPG && !isJPEG && !isPNG) {
                this.$message.error('上传头像图片只能是 JPG|JPEG|PNG 格式!');
                }
                if (!isLt2M) {
                this.$message.error('上传头像图片大小不能超过 10MB!');
                }
                return (isJPEG || isJPEG || isPNG) && isLt2M;
                return true;
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