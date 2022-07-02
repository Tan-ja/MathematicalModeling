<template>
    <div class="outside-div">
        <div>
            <div>
                <el-page-header @back="goBack" content="详情页面">
                </el-page-header>
            </div>
            <div class="introduction">
                <el-col :span="28">
                    <el-card shadow="hover">
                        <div class="intro"><font color = "#409EFF" size="5px">{{stuInfo.sposition}}---{{stuInfo.sname}}</font></div>
                        <div class="intro-more">时间: {{stuInfo.sdate}} 来源: {{stuInfo.sfrom}} 评论: {{stuInfo.scomment}} 阅读: {{stuInfo.sreaders}}</div> 
                        <el-divider></el-divider>
                        <!-- 学生头像 -->
                        <div class="image-size">
                            <el-image :src="stuInfo.sfaceaddress" class="image-size-sub"></el-image>
                        </div>
                        <!-- 学生的个人详细信息 -->
                        <div class="tea-info-more" v-for="desc in stuDesc" :key="desc.did">
                            <p>{{desc.udesc}}</p>
                        </div>
                    </el-card>
                    <div class="comment-div">
                    <font size = "5px">评论</font> 
                    <el-divider></el-divider>
                </div>
                    <div>
                        <el-card style="width:100%;margin-top:20px;height:100%" v-for="con in comments" :key="con.comid">
                            <div>
                                <div style="float:left;margin-right:15px">
                                    <el-avatar :size="50" :src="circleUrl"></el-avatar>
                                </div>
                                <div>
                                    <div>
                                        <font color="#49d2e2" @click="toOther">{{con.usernickname}}</font>&nbsp;
                                        <el-tag
                                            type="danger"
                                            color="red"
                                            size="mini"
                                            effect="dark">
                                            {{con.userlevel}}
                                        </el-tag>
                                    </div>
                                    <div>
                                        {{con.comdate}}
                                    </div>
                                </div>
                            </div>
                            <div style="clear:both;height:100%" v-html="con.comment">
                            </div>
                            <div>
                                <el-button type="warning" icon="el-icon-star-off" size="mini" @click="changeApprovalNum(con.toid)" circle></el-button>&nbsp;{{con.approvalnum}}
                            </div>
                        </el-card>
                    </div>
                    <div v-show="commentvisible">
                        <el-card shadow="hover">
                            暂无评论
                        </el-card>
                    </div>
                    <div class="user-face">
                        <div class="user-face-one">
                            <el-avatar :size="75" :src="circleUrl"></el-avatar>
                            <div class="face-font">
                                <font color="blue" v-show="checkin">请先登录</font>
                            </div>
                        </div>
                        <div>
                            <quill-editor v-model="usercomment.comment" style="width:1200px;height:120px">
                            </quill-editor>
                        </div>
                    </div>
                    <div class="can-com">
                        <el-button type="primary" @click="submit">提交</el-button>
                        <el-button type="info" @click="reset">重置</el-button>
                    </div>
                </el-col>
            </div>
        </div>
        <div class="div-other">
            <el-card shadow="hover" class="otherone">
                <div>热文推荐</div>
                <el-divider></el-divider>
            </el-card>
            <el-card shadow="hover" class="otherone">
                <div>精彩评论</div>
                <el-divider></el-divider>
            </el-card>
        </div>
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                stuInfo:{},
                stuDesc:[],
                checkin:true,
                comments:[], // 当前用户查看对象的所有的评论
                commentvisible:true,
                usercomment:{ // 用户的评论
                    userid:"",
                    usernickname:"",
                    userlevel:"",
                    comdate:"",
                    toid:"",
                    comment:"",
                    userfaceaddress:"",
                },
                circleUrl: "https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png",
            }
        },
        created(){
            this.getStudentInfo();
            var user = JSON.parse(this.cookie.get("user"));
            this.circleUrl = user.userfaceaddress;
            this.usercomment.userfaceaddress = user.userfaceaddress;
            this.usercomment.userid = user.userid;
            this.usercomment.usernickname = user.usernickname;
            this.usercomment.userlevel = user.userlevel;
            this.usercomment.toid = "s:" + sessionStorage.sid;
            this.checkin = false;
            this.getComments();
        },
        methods: {
            getStudentInfo(){
                var newValue = sessionStorage.sid;
                if (newValue != null || newValue != undefined){
                    const result = this.$axios.get("user/stuinfo?stusid=" + newValue);
                    result.then((response) => {
                        this.stuInfo = response.data.student;
                        for (var i = 0;i < response.data.studesc.length;i++){
                            var studesc = {};
                            studesc["did"] = i;
                            studesc['udesc'] = response.data.studesc[i];
                            this.stuDesc.push(studesc);
                        }
                    });
                }
            },
            getComments(){ // 获取当前用户查看对象的所有评论
                const result = this.$axios.get("/comment/getcomment?toid=" + this.usercomment.toid);
                result.then(response => {
                    if (response.data.comments.length == 0){
                        this.commentvisible = true;
                    } else {
                        this.comments = response.data.comments;
                        this.commentvisible = false;
                    }
                });
            },
            goBack() {
                this.$router.push("/cadresED");
            },
            reset(){
                this.usercomment.comment = "";
            },
            submit(){
                if (this.usercomment.comment == "" || this.usercomment.comment == null){
                    this.$notify({
                        message:'请输入评论内容',
                        type:'error',
                    });
                    return false;
                }
                var nowDate = new Date();
                this.usercomment.comdate = `${nowDate.getFullYear()}-${nowDate.getMonth() + 1}-${nowDate.getDate()}`
                const result = this.$axios.post("/comment/insertment",this.usercomment);
                result.then(response => {
                    if (response.data.status == 200){
                        this.$notify({
                            message:'评论成功',
                            type:'success',
                        });
                    } else if (response.data.status == 400){
                        this.$notify({
                            message:'服务器异常',
                            type:'error',
                        });
                    } else {
                        this.$notify({
                            message:'服务器连接失败',
                            type:'error',
                        });
                    }
                    this.usercomment.comment = "";
                    this.getComments();
                });
            },
            toOther(usernickname){ // 跳转到评论区中评论用户的信息页面
                console.log("OK");
            },
            changeApprovalNum(toid){
                var userInfo = this.cookie.get("user");
                if (userInfo == "" || userInfo == null){
                    this.$notify({
                        message:'请先登录',
                        type:'info',
                    });
                    return false;
                }
            },
        },
    }
</script>

<style scoped>
   .introduction{
        margin:10px auto;
        font-size: bold;
    }
    .other{
        margin: 0px auto 10px 10px;
        height: 80px;
    }
    .intro{
        text-align: center;
    }
    .otherone{
        margin: 0px auto 10px 10px;
        height: 80px;
    }
    .div-other{
        margin-left: 10px;
        width: 32%;
        float: right;
        margin-top: 35px;
    }
    .intro-more{
        margin-top: 15px;
        text-align: center;
    }
    .image-size-sub{
      width: 100%;
      height: 100%;
    }
    .image-size{
      width: 320px;
      height: 230px;
      margin: auto;
    }
    .comment-div{
        clear: both;
        margin-top: 20px;
        padding-top: 10px;
    }
    .can-com{
        text-align: right;
        margin-top: 80px;
    }
    .user-face{
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
    }
    .user-face-one{
        margin: auto;
        margin-right: 25px;
        margin-top: 0px;
        width: 50x;
    }
    .user-face-two{
        margin: auto;
        width: 50x;
    }
    .face-font{
        text-align: center;
    }
    .outside-div{
        display: flex;
        justify-content: space-between;
        width:100%;
        height:870px;
        background-color:white;padding: 15px;
    }
</style>