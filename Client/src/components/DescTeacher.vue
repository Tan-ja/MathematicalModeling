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
                        <div class="intro"><font color = "#409EFF" size="5px">{{teaInfo.uprofession}}---{{teaInfo.uname}}</font></div>
                        <div class="intro-more">时间: {{teaInfo.udate}} 来源: {{teaInfo.ufrom}} 评论: {{teaInfo.ucomment}} 阅读: {{teaInfo.ureaders}}</div> 
                        <el-divider></el-divider>
                        <!-- 老师头像 -->
                        <div class="image-size">
                            <el-image :src="teaInfo.ufaceaddress" class="image-size-sub"></el-image>
                        </div>
                        <!-- 学生的个人详细信息 -->
                        <div class="tea-info-more" v-for="desc in teaDesc" :key="desc.did">
                            <p>{{desc.udesc}}</p>
                        </div>
                    </el-card>
                    <div class="comment-div">
                    <font size = "5px">评论</font> 
                    <el-divider></el-divider>
                </div>
                    <div>
                        <el-card style="width:1200px;margin-top:20px;height:100%" v-for="con in comments" :key="con.comid">
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
        <!-- <div class="div-other">
            <el-card shadow="hover" class="otherone">
                <div>热文推荐</div>
                <el-divider></el-divider>
            </el-card>
            <el-card shadow="hover" class="otherone">
                <div>精彩评论</div>
                <el-divider></el-divider>
            </el-card>
        </div> -->
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                teaInfo:{},
                teaDesc:[],
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
            this.getTeacherInfo();
            var user = JSON.parse(this.cookie.get("user"));
            this.circleUrl = user.userfaceaddress;
            this.usercomment.userfaceaddress = user.userfaceaddress;
            this.usercomment.userid = user.userid;
            this.usercomment.usernickname = user.usernickname;
            this.usercomment.userlevel = user.userlevel;
            this.usercomment.toid = "t:" + sessionStorage.tid;
            this.checkin = false;
            this.getComments();
        },
        methods: {
            getTeacherInfo(){
                var newValue = sessionStorage.tid;
                if (newValue != null || newValue != undefined){
                    const result = this.$axios.get("user/teainfo?teacherDesc=" + newValue);
                    result.then((response) => {
                        this.teaInfo = response.data.teacher;
                        for (var i = 0;i < response.data.teadesc.length;i++){
                            var tea = {};
                            tea["did"] = i;
                            tea['udesc'] = response.data.teadesc[i];
                            this.teaDesc.push(tea);
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
                this.$router.push("/teachers");
            },
            reset(){
                this.usercomment.comment = "";
            },
            submit(){
                if (this.usercomment.comment == "" || this.usercomment.comment == null){
                    this.$notify({
                        message:'请输入评论内容',
                        type:'info',
                    });
                    return false;
                }
                var nowDate = new Date();
                this.usercomment.comdate = `${nowDate.getFullYear()}-${nowDate.getMonth() + 1}-${nowDate.getDate()}`
                const result = this.$axios.post("/comment/insertment",this.usercomment);
                result.then(response => {
                    if (response.data.status == 200){
                        this.$message.success("评论成功");
                    } else if (response.data.status == 400){
                        this.$message.info("服务器异常");
                    } else {
                        this.$message.error("服务器连接失败");
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
                    this.$message.info("请先登录");
                    return false;
                }
            },
            handleSizeChange(val) {
                this.pageSize = val;
                this.getdata();
            },
            handleCurrentChange(val) {
                this.currentPage = val;
                this.getdata();
            }
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
        background-color:white;
        padding: 15px;
    }
</style>