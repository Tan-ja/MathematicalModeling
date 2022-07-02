<template>
    <div style="width:100%;height:100%;padding: 15px">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div>
                <el-page-header @back="goBack" content="参赛信息详情">
                </el-page-header>
            </div>
            <div class="introduction">
                <el-tabs type="border-card" style="width:1500px">
                    <el-tab-pane label="团队信息">
                        <el-card class="box-card">
                        <div slot="header" class="clearfix">
                            <span>团队成员</span>
                        </div>
                            <el-table
                            :data="tableData"
                            style="width: 100%">
                                <el-table-column type="expand">
                                <template slot-scope="props">
                                    <el-form label-position="left" inline class="demo-table-expand">
                                    <el-form-item label="姓名:">
                                        <span>{{ props.row.pname }}</span>
                                    </el-form-item>
                                    <el-form-item label="学号:">
                                        <span>{{ props.row.pstunum }}</span>
                                    </el-form-item>
                                    <el-form-item label="学院:">
                                        <span>{{ props.row.pacademy }}</span>
                                    </el-form-item>
                                    <el-form-item label="班级年级:">
                                        <span>{{ props.row.pgrade }}</span>
                                    </el-form-item>
                                    <el-form-item label="宿舍号:">
                                        <span>{{ props.row.pdormitoryno }}</span>
                                    </el-form-item>
                                    <el-form-item label="校区:">
                                        <span>{{ props.row.pcampus }}</span>
                                    </el-form-item>
                                    <el-form-item label="籍贯:">
                                        <span>{{ props.row.pnativeplace }}</span>
                                    </el-form-item>
                                    <el-form-item label="身份证号:">
                                        <span>{{ props.row.pidnumber }}</span>
                                    </el-form-item>
                                    <el-form-item label="QQ号:">
                                        <span>{{ props.row.pqqno }}</span>
                                    </el-form-item>
                                    <el-form-item label="手机号:">
                                        <span>{{ props.row.pmobilephoneno }}</span>
                                    </el-form-item>
                                    <el-form-item label="Email:">
                                        <span>{{ props.row.email }}</span>
                                    </el-form-item>
                                    <el-form-item label="参赛经历:">
                                        <span>{{ props.row.pattendeddesc }}</span>
                                    </el-form-item>
                                    </el-form>
                                </template>
                                </el-table-column>
                                <el-table-column
                                label="学号"
                                prop="pstunum">
                                </el-table-column>
                                <el-table-column
                                label="姓名"
                                prop="pname">
                                </el-table-column>
                                <el-table-column
                                label="角色"
                                prop="mrole">
                                </el-table-column>
                            </el-table>
                        </el-card>
                    </el-tab-pane>
                    <el-tab-pane label="报名进度">
                        <currentStatusShow
                        v-on:updateNewStatus="updateNewStatus"
                        ref="us"
                        >
                        </currentStatusShow>
                    </el-tab-pane>
                    <el-tab-pane label="赛事详情">
                        <p class="ql-editor" v-html="matchinfo.mdesc"></p>
                    </el-tab-pane>
                    <el-tab-pane label="提交论文">
                        <el-form :model="thesis" :rules="rules" ref="thesis" label-width="100px" class="demo-ruleForm">
                            <el-form-item label="论文内容">
                                <ucomment 
                                    :con="thesis.thecontent" 
                                    v-on:updateCommnetValue="updateCommnetValue"
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
                                <el-button type="primary" @click="submitForm('thesis')">确认提交</el-button>
                                <el-button @click="resetForm('thesis')">重置</el-button>
                            </el-form-item>
                        </el-form>
                    </el-tab-pane>
                </el-tabs>
            </div>
        </div>
    </div>
</template>

<script>
    import CurrentRegistrationProgress from './CurrentRegistrationProgress.vue';
    import UserCommentEditor from './WangEditor.vue';
    export default {
        name: '',
        components:{
            currentStatusShow: CurrentRegistrationProgress,
            ucomment: UserCommentEditor,
        },
        data() {
            return {
                active: 0,
                tableData: [],
                matchinfo:{},
                reviewResult: '',
                editorOption: {
                    theme: 'bubble',
                    modules: {
                        toolbar: [],
                    }
                },
                rules: {
                    thecontent: [
                        { required: true, message: '请输入论文内容', trigger: 'blur' },
                    ],
                },
                // 用户提交的论文
                thesis:{
                    id: '',
                    thedate: '',
                    teamid: JSON.parse(sessionStorage.user).userid,
                    matchid: sessionStorage.amatchid,
                    thecontent: '',
                    filepath: [],
                },
                actionForAttachment: '',
                // 用户删除的已经上传的所有附件
                fileList: [],
                // 用户上传成功后的文件路径
                filePathList: [],
            }
        },
        created(){
            this.actionForAttachment = this.$baseURL + 'upload/uploadthesisattach';
            this.getCurrentMatch();
        },
        methods:{
            getCurrentMatch(){
                let matchid = sessionStorage.amatchid;
                let userid = JSON.parse(sessionStorage.user).userid;
                const result = this.$axios.get("teaminfo/getteaminfodesc?matchid=" + matchid + "&userid=" + userid);
                result.then(response =>{
                    if (response.data.status == 200){
                        var currentStatus = '';
                        this.matchinfo=response.data.matchInfo;
                        if (response.data.allParticipant != null &&response.data.allParticipant.length != 0){
                            for (let i = 0;i < response.data.allParticipant.length;i++){
                                let item = response.data.allParticipant[i][0];
                                if (i == 0){
                                    currentStatus = response.data.allParticipant[i][2];
                                    this.reviewResult = item.presult;
                                }
                                if (response.data.allParticipant[i][1] == 0){
                                    item["mrole"] = "队长";
                                } else {
                                    item["mrole"] = "成员";
                                }
                                this.tableData.push(item);
                            }
                            this.active = currentStatus;
                            this.$refs.us.updateNewStatusTwo(currentStatus);
                        }
                    } else {
                        this.$notify({
                            message:'网络连接异常',
                            type:'error',
                        });
                        return false;
                    }
                });
            },
            goBack() {
                this.$router.push("/personalentryinfo");
            },
            updateNewStatus(newValue){
                this.active = newValue;
                let matchid = sessionStorage.amatchid;
                let userid = JSON.parse(sessionStorage.user).userid;
                this.$axios.get("teaminfo/updatecurrentstatus?matchid=" + matchid + "&userid=" + userid + "&currentStatus=" + newValue);
            },
            // 提交论文
            submitForm(formName) {
                this.$refs.des.submit();
                if (this.thesis.thecontent === ''){
                    this.$notify({
                        message:'请输入论文内容',
                        type:'error',
                    });
                    return false;
                }
                this.sureToSubmitThesis();
            },
            // 确认提交论文
            sureToSubmitThesis(){
                let date = new Date();
                let year = date.getFullYear();
                let month = date.getMonth() + 1;
                let day = date.getDate();
                let tdate = `${year}-${month}-${day}`;
                this.thesis.thedate = tdate;
                this.$refs.upload.submit();
                this.thesis.filepath = this.filePathList;
                const result = this.$axios.post("thesis/addthesis", this.thesis);
                result.then(response => {
                    if (response.data.status == 200){
                        this.thesis.id = response.data.newthesisid;
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
            },
            // 充值论文内容
            resetForm(formName) {
                this.$refs[formName].resetFields();
                this.thesis.thecontent = "";
                this.$refs.des.updateCommnetValue(this.thesis.thecontent);
            },
            // 更新论文内容
            updateCommnetValue(newValue){
                this.thesis.thecontent = newValue;
            },
            handlePreview(file, fileList) {
            },
            handleRemove(file, fileList) {
                const result = this.$axios.delete("upload/deleteuploadfile?category=thesisattachment&filepath=" + file.response + "&objid=" + this.thesis.id);
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
            },
            sureCheckToAdd(){
                let checkItem = document.getElementById("surecheck");
                checkItem.click();
            },
            successUpload(res){
                this.filePathList.push(res);
            },
        },
    }
</script>

<style scoped>
    .introduction{
        /* margin:10px auto; */
        margin-top: 20px;
        font-size: bold;
        width: 1500px;
        height: 100%;
    }
    .demo-table-expand {
    font-size: 0;
  }
  .demo-table-expand label {
    width: 90px;
    color: #99a9bf;
  }
  .demo-table-expand .el-form-item {
    margin-right: 0;
    margin-bottom: 0;
    width: 50%;
  }
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
  
.wrapper{
  white-space: pre-wrap;
}
</style>