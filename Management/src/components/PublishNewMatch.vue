<template>
    <div style="width:1500px;height:100%;padding: 15px;background-color: white;margin: 0 auto">
        <div style="width:1500px;margin: 0 auto">
            <el-page-header @back="goBack" content="详情页面">
            </el-page-header>
        </div>
        <div style="width:1500px;margin: 0 auto;margin-top: 20px">
            <el-card class="box-card">
            <div slot="header" class="clearfix">
                <span>发布新赛事</span>
            </div>
            <div>
                <el-form :model="newMatch" :rules="rules" ref="newMatch" label-width="100px" class="demo-ruleForm">
                <el-form-item label="赛事名称" prop="mtitle">
                    <el-input v-model="newMatch.mtitle"></el-input>
                </el-form-item>
                <el-form-item label="具体内容">
                    <ucomment 
                        v-on:updateCommnetValue="updateCommnetValue"
                        ref="uc"
                        >
                    </ucomment>
                </el-form-item>
                <el-form-item label="附件">
                    <el-upload
                        class="upload-demo"
                        drag
                        :action="action"
                        :on-success="handleAvatarSuccess"
                        :before-upload="beforeAvatarUpload"
                        :show-file-list="showFileList"
                        >
                        <i class="el-icon-upload"></i>
                        <div class="el-upload__text">将文件拖到此处，或<em>点击上传</em></div>
                        <div class="el-upload__tip" slot="tip">上传文件不超过10MB(目前只支持单个文件上传，后面上传的会覆盖前面已上传数据)</div>
                    </el-upload>
                </el-form-item>
                <el-form-item>
                    <el-button type="primary" @click="submitForm('newMatch')">确认发布</el-button>
                    <el-button @click="resetForm('newMatch')">重置</el-button>
                </el-form-item>
                </el-form>
            </div>
            </el-card>
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
                newMatch:{
                    mdate:'',
                    mtitle:'',
                    mdesc:'',
                    mattachment:'',
                },
                rules: {
                    mtitle: [
                        { required: true, message: '请输入赛事标题', trigger: 'blur' },
                    ],
                },
                action:'',
                showFileList:true,
            }
        },
        methods:{
            goBack(){
                this.$router.push("/allmatch");
            },
            submitForm(formName) {
                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        this.sureToPublish();
                    } else {
                        return false;
                    }
                });
            },
            sureToPublish(){
                this.$refs.uc.submit();
                if (this.newMatch.mdesc == '' || this.newMatch.mdesc == null){
                    this.$message({
                        message:'请输入赛事具体内容',
                        type:'error',
                    });
                    return false;
                }
                this.newMatch.mdate=new Date();
                this.$refs.uc.submit();
                const result = this.$axios.post("matchinfo/addmatchinfo", this.newMatch);
                result.then((response) => {
                    if (response.data.status == 200){
                        this.$message({
                            message:response.data.statusText,
                            type:'success',
                        });
                        this.$router.push("/allmatch");
                    } else {
                        this.$message({
                            message:response.data.statusText,
                            type:'error',
                        });
                    }
                });
            },
            resetForm(formName) {
                this.$refs[formName].resetFields();
                this.newMatch.mdesc="";
                this.$refs.uc.reset();
            },
            beforeAvatarUpload(file) {
                const isJPG = file.type === 'image/jpg';
                const isJPEG = file.type === 'image/jpeg';
                const isPNG = file.type === 'image/png';
                const isLt2M = file.size / 1024 / 1024 < 10;

                if (!isJPG && !isJPEG && !isPNG) {
                this.$message.error('上传头像图片只能是 JPG或JPEG或PNG 格式!');
                }
                if (!isLt2M) {
                this.$message.error('上传头像图片大小不能超过 10MB!');
                }
                return (isJPG || isJPEG || isPNG) && isLt2M;
            },
            handleAvatarSuccess(response, file) {
                if (response != null || response != ''){
                    this.$message({
                        message:'上传成功',
                        type:'success',
                    });
                } else {
                    this.$message({
                        message:'上传失败',
                        type:'error',
                    });
                    return false;
                }
                this.newMatch.mattachment = response;
            },
            updateCommnetValue(newValue){
                this.newMatch.mdesc = newValue;
            },
        },
        created(){
            this.action=this.$baseURL + 'upload/matchattachment';
        }
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
  }
</style>