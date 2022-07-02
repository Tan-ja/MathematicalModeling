<template>
    <div style="width:1500px;padding: 15px;background-color: white;margin: 0 auto">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div>
                <el-page-header @back="goBack" :content="content">
                </el-page-header>
            </div>
            <div style="margin-top:50px">
                <el-card class="box-card">
                    <el-form :model="newItem" :rules="rules" ref="newItem" label-width="100px" class="demo-ruleForm">
                    <el-form-item label="标题" prop="atitle">
                        <el-input v-model="newItem.atitle"></el-input>
                    </el-form-item>
                    <el-form-item label="类型" prop="region">
                        <!-- <el-col :span="11"> -->
                            <el-input v-model="newItem.acategory" :disabled="disabled"></el-input>
                        <!-- </el-col> -->
                    </el-form-item>
                    <el-form-item label="封面图片" prop="region">
                        <el-upload
                        class="avatar-uploader"
                        :action="action"
                        :show-file-list="false"
                        :on-success="handleAvatarSuccess"
                        :before-upload="beforeAvatarUpload">
                        <img v-if="imageUrl" :src="imageUrl" class="avatar">
                        <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                        </el-upload>
                    </el-form-item>
                    <el-form-item label="创建时间" required>
                        <el-form-item prop="adate">
                            <el-date-picker type="date" placeholder="选择日期" v-model="newItem.adate" style="width: 100%;"></el-date-picker>
                        </el-form-item>
                    </el-form-item>
                    <el-form-item label="来源" prop="afrom">
                        <!-- <el-col :span="11"> -->
                            <el-input v-model="newItem.afrom"></el-input>
                        <!-- </el-col> -->
                    </el-form-item>
                    <el-form-item label="简介">
                        <el-input v-model="newItem.acontent" type="textarea"></el-input>
                    </el-form-item>
                    <el-form-item label="正文">
                        <ucomment 
                            :con="newItem.acontentdesc" 
                            v-on:updateCommnetValue="updateCommnetValue"
                            v-on:getAllFilePath="getAllFilePath"
                            style="width:100%;height:100%" 
                            ref="des"
                            >
                        </ucomment>
                    </el-form-item>
                    <el-form-item label="上传附件">
                        <el-upload
                        class="upload-demo"
                        ref="upload"
                        :action="actionForAttachment"
                        :data="params"
                        :on-preview="handlePreview"
                        :on-success="successUpload"
                        :on-remove="handleRemove"
                        :file-list="fileList"
                        :auto-upload="false">
                        <el-button slot="trigger" size="small" type="primary" id="surecheck" v-show="false"></el-button>
                        <el-button size="small" type="primary" @click="sureCheckToAdd">选取文件</el-button>
                        </el-upload>
                    </el-form-item>
                    <el-form-item>
                        <el-button type="primary" @click="submitForm('newItem')">确认发布</el-button>
                        <el-button @click="resetForm('newItem')">重置</el-button>
                    </el-form-item>
                    </el-form>
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
                // 用户添加新的协会荣誉
                newItem:{
                    adid: '',
                    acategory:'', //
                    adate:'', // 
                    aconsider:0,
                    acomment:0,
                    areaders:0,
                    atitle:'', // 
                    afrom:'', // 
                    acontent:'', // 
                    afaceaddress:'http://www.glutsm.com/public/thumb/thumb03.jpg',
                    acontentdesc:'', //
                    filepath: [],
                },
                rules: {
                    atitle: [
                        { required: true, message: '请输入活动名称', trigger: 'blur' },
                    ],
                    adate: [
                        { type: 'date', required: true, message: '请选择日期', trigger: 'change' }
                    ],
                    afrom: [
                        { required: true, message: '请输入活动来源', trigger: 'blur' },
                    ],
                },
                disabled:true,
                imageUrl: '',
                action: '',
                actionForAttachment: '',
                content: '',
                fileList: [],
                dataStr: {},
                statusCode :'',
                filePathList: [],
            }
        },
        methods:{
            submitForm(formName) {
                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        this.sureToAdd();
                    } else {
                        return false;
                    }
                });
            },
            resetForm(formName) {
                this.$refs[formName].resetFields();
            },
            goBack() {
                var category = sessionStorage.addcate;
                switch(category){
                    case "协会荣誉": // 协会荣誉
                        this.$router.push("/honor");
                        break;
                    case "竞赛成绩": // 竞赛成绩
                        this.$router.push("/result");
                        break;
                    case "宣传视频": // 视频
                        this.$router.push("/video");
                        break;
                    case "试题论文": // 试题论文
                        this.$router.push("/exampapers");
                        break;
                    case "学习资料": // 学习资料
                        this.$router.push("/learningmaterials");
                        break;
                    case "学术资讯": // 学术资讯
                        this.$router.push("/academicinformation");
                        break;
                    case "竞赛培训": // 竞赛培训
                        this.$router.push("/contesttraining");
                        break;
                    case "社团活动": // 竞赛培训
                        this.$router.push("/clubactivities");
                        break;
                    case "优秀网站": // 竞赛培训
                        this.$router.push("/goodwebsite");
                        break;
                    case "常用软件": // 常用软件
                        this.$router.push("/commonlyusedwebsite");
                        break;
                }
            },
            async sureToAdd(){
                this.$refs.des.submit();
                this.$refs.des.submitAllFilePath();
                this.$refs.upload.submit();
                this.newItem.filepath = this.filePathList;
                const result = await this.$axios.post("/academic/addacademicdesc", this.newItem);
                if (result.data.status == 200){
                    this.newItem.adid = result.data.checkid;
                    this.$notify({
                        message:result.data.statusText,
                        type:'success',
                    });
                } else if (result.data.status == 300){
                    this.$notify({
                        message:result.data.statusText,
                        type:'info',
                    });
                    return false;
                } else {
                    this.$notify({
                        message:result.data.statusText,
                        type:'error',
                    });
                    return false;
                }
                this.resetForm("newItem");
                this.newItem.acontent='';
                this.newItem.acontentdesc='';
            },
            updateCommnetValue(newValue){
                this.newItem.acontentdesc = newValue;
            },
            handleAvatarSuccess(res, file) {
                this.imageUrl = URL.createObjectURL(file.raw);
                this.newItem.afaceaddress = res;
            },
            beforeAvatarUpload(file) {
                const isJPEG = file.type === 'image/jpeg';
                const isJPG = file.type === 'image/jpg';
                const isPNG = file.type === 'image/png';
                const isLt2M = file.size / 1024 / 1024 < 10;
                if (!isJPEG && !isJPG && !isPNG) {
                this.$message.error('上传头像图片只能是 JPG|JPEG|PNG 格式!');
                }
                if (!isLt2M) {
                this.$message.error('上传头像图片大小不能超过 10MB!');
                }
                return (isJPEG || isJPG || isPNG) && isLt2M;
            },
            handleRemove(file, fileList) {
                const result = this.$axios.delete("upload/deleteuploadfile?category=academicattachment&filepath=" + file.response + "&objid=" + this.newItem.adid);
                result.then(response => {
                    if (response.data.status == 200){
                        this.$notify({
                            message:response.data.statusText,
                            type:'success',
                        });
                    } else {
                        this.$notify({
                            message:response.data.statusText,
                            type:'error',
                        });
                    }
                });
            },
            handlePreview(file) {
            },
            sureCheckToAdd(){
                let checkItem = document.getElementById("surecheck");
                checkItem.click();
            },
            successUpload(res){
                this.filePathList.push(res);
            },
            getAllFilePath(allFilePath){
                if (allFilePath !== ''){
                    if (allFilePath.indexOf(":") == -1){
                        let existFilePath = [];
                        var str = this.newItem.acontentdesc;
                        var imgReg = /<img.*?(?:>|\/>)/gi;
                        var srcReg = /src=[\'\"]?([^\'\"]*)[\'\"]?/i;
                        var arr = str.match(imgReg);  // arr 为包含所有img标签的数组
                        for (var i = 0; i < arr.length; i++) {
                            var src = arr[i].match(srcReg);
                            existFilePath.push(src[1].substring(src[1].lastIndexOf("/") + 1));
                        }
                        let index = -1;
                        for (let k = 0;k < existFilePath.length;k++){
                            if (allFilePath.indexOf(existFilePath[j]) != -1){
                                index = j;
                            }
                        }
                        if (index == -1){
                            const result = this.$axios.delete("upload/deleteuploadfilenolimit?category=academiccontentforimage&filepath=" + allFilePath);
                            result.then(response => {
                                if (response.data.status == 200){
                                    this.$notify({
                                        message: response.data.statusText,
                                        type: 'success',
                                    });
                                } else {
                                    this.$notify({
                                        message: response.data.statusText,
                                        type: 'error',
                                    });
                                    return false;
                                }
                            });
                        }
                    } else {
                        let filePath = allFilePath.split(":");
                        let existFilePath = [];
                        var str = this.newItem.acontentdesc;
                        var imgReg = /<img.*?(?:>|\/>)/gi;
                        var srcReg = /src=[\'\"]?([^\'\"]*)[\'\"]?/i;
                        var arr = str.match(imgReg);  // arr 为包含所有img标签的数组
                        for (var i = 0; i < arr.length; i++) {
                            var src = arr[i].match(srcReg);
                            existFilePath.push(src[1].substring(src[1].lastIndexOf("/") + 1));
                        }
                        for (let j = 0;j < filePath.length;j++){
                            let index = -1;
                            for (let k = 0;k < existFilePath.length;k++){
                                if (filePath[i].indexOf(existFilePath[j]) != -1){
                                    index = j;
                                }
                            }
                            if (index == -1){
                                const result = this.$axios.delete("upload/deleteuploadfilenolimit?category=academiccontentforimage&filepath=" + filePath[i]);
                                result.then(response => {
                                    if (response.data.status == 200){
                                        this.$notify({
                                            message: response.data.statusText,
                                            type: 'success',
                                        });
                                    } else {
                                        this.$notify({
                                            message: response.data.statusText,
                                            type: 'error',
                                        });
                                        return false;
                                    }
                                });
                            }
                        }
                    }
                }
            },
        },
        created(){
            this.action=this.$baseURL + 'upload/postfile';
            this.actionForAttachment = this.$baseURL + 'upload/uploadacademicattachment';
            this.newItem.acategory = sessionStorage.addcate;
            this.content = "添加" + this.newItem.acategory;
        },
        computed:{
            params(){
                let param = {
                    objid: this.newItem.adid,
                };
                return param;
            }
        },
    }
</script>

<style scoped>
    .text {
    font-size: 14px;
  }

  .item {
    padding: 18px 0;
  }

  .box-card {
    width: 70%;
    margin-left: 15%;
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