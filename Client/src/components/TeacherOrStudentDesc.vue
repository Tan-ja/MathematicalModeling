<template>
    <div class="outside-div">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div>
                <el-page-header @back="goBack" content="详情页面">
                </el-page-header>
            </div>
            <div class="introduction">
                <el-col :span="28">
                    <el-card shadow="hover" style="width:1500px">
                        <div v-show="info.sid">
                            <div class="intro"><font color = "#409EFF" size="5px">{{info.sposition}}---{{info.sname}}</font></div>
                            <div class="intro-more">时间: {{info.sdate}} 来源: {{info.sfrom}} 评论: {{info.scomment}} 阅读: {{info.sreaders}}</div> 
                            <el-divider></el-divider>
                            <div class="image-size">
                                <img :src="info.sfaceaddress" class="image-size-sub"/>
                            </div>
                            <div v-html="info.sachieve">
                            </div>
                            <p class=""></p>
                            <div style="text-align:center;margin-top:200px">
                                <div>
                                    <el-button circle size="medium" style="width:80px;height:80px" @click="changeApproveNumForStu(info.sid)">
                                        <i :class="approveStatus"></i>
                                    </el-button>
                                </div>
                                <div>
                                    {{info.sthumbup}}
                                </div>
                            </div>
                        </div>
                        <div v-show="info.uid">
                            <div class="intro"><font color = "#409EFF" size="5px">{{info.uprofession}}---{{info.uname}}</font></div>
                            <div class="intro-more">时间: {{info.udate}} 来源: {{info.ufrom}} 评论: {{info.ucomment}} 阅读: {{info.ureaders}}</div> 
                            <el-divider style="width:1000px"></el-divider>
                            <!-- 学生头像 -->
                            <div class="image-size">
                                <img :src="info.ufaceaddress" class="image-size-sub"/>
                            </div>
                            <!-- 学生的个人详细信息 -->
                            <div v-html="info.udesc">
                            </div>
                            <div style="text-align:center;margin-top:200px">
                                <div>
                                    <el-button circle size="medium" style="width:80px;height:80px" @click="changeApproveNumForTea(info.uid)">
                                        <i :class="approveStatus"></i>
                                    </el-button>
                                </div>
                                <div>
                                    {{info.uthumbup}}
                                </div>
                            </div>
                        </div>
                    </el-card>
                        <div class="comment-div">
                        <el-card style="width:100%">
                        <font size = "5px">评论</font> 
                        <el-divider></el-divider>
                    </el-card>
                    </div>
                    <div v-for="(item,index) in comments" :key="index">
                        <div style="width:100%;height:100%"  v-for="(con,index) in item.allSubComments" :key="index">
                            <el-card style="width:100%;margin-top:20px;height:100%" v-show="con.superid == null || con.superid == ''">
                                <div>
                                    <div style="float:left;margin-right:15px">
                                        <el-avatar :size="50" :src="picURL + con.userfaceaddress"></el-avatar>
                                    </div>
                                    <div>
                                        <div>
                                            <el-link :underline="false"><font color="#49d2e2" @click="toOther(con.userid)">{{con.usernickname}}</font>&nbsp;</el-link>
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
                                <div style="clear:both;width:100%;height:100%" v-html="con.comment">
                                </div>
                                <div>
                                    <el-button type="warning" :icon="con.approve" size="mini" @click="changeApprovalNum(con.toid, con.comid, con.approvalnum)" circle></el-button>&nbsp;{{con.approvalnum}}
                                    <el-link :underline="false" @click="tellToOthers(item.entity.comid,con)"><i class="el-icon-chat-dot-round"></i>回复</el-link>
                                </div>
                                <ucomment 
                                :con="usercomment.comment" 
                                style="width:100%;height:100%;margin-top:20px" 
                                :ref="con.selec"
                                v-on:updateCommnetValue="updateCommnetValue"
                                v-if="con.istellto"
                                >
                                </ucomment>
                            </el-card>
                            <el-card style="width:90%;margin-top:20px;height:100%;margin-left:10%" v-show="con.superid == item.entity.comid">
                                <div>
                                    <div style="float:left;margin-right:15px">
                                        <el-avatar :size="50" :src="picURL + con.userfaceaddress"></el-avatar>
                                    </div>
                                    <div>
                                        <div>
                                            <el-link :underline="false"><font color="#49d2e2" @click="toOther(con.userid)">{{con.usernickname}}</font>&nbsp;</el-link>
                                            <el-tag
                                                type="danger"
                                                color="red"
                                                size="mini"
                                                effect="dark">
                                                {{con.userlevel}}
                                            </el-tag>
                                            <font>回复</font>
                                            <el-link :underline="false"><font color="#49d2e2" @click="toOther(con.ouserid)">{{con.othernickname}}</font>&nbsp;</el-link>
                                        </div>
                                        <div>
                                            {{con.comdate}}
                                        </div>
                                    </div>
                                </div>
                                <div style="clear:both;width:100%;height:100%" v-html="con.comment">
                                </div>
                                <div>
                                    <el-button type="warning" :icon="con.approve" size="mini" @click="changeApprovalNum(con.toid, con.comid, con.approvalnum)" circle></el-button>&nbsp;{{con.approvalnum}}
                                    <el-link :underline="false" @click="tellToOthers(item.entity.comid,con)"><i class="el-icon-chat-dot-round"></i>回复</el-link>
                                </div>
                                <ucomment 
                                :con="usercomment.comment" 
                                style="width:100%;height:100%;margin-top:20px" 
                                :ref="con.selec"
                                v-on:updateCommnetValue="updateCommnetValue"
                                v-show="con.istellto"
                                >
                                </ucomment>
                            </el-card>
                        </div>
                    </div>
                    <div style="width:1500px">
                        <div style="width:600px;margin: 0 auto">
                            <el-pagination
                            @size-change="handleSizeChange"
                            @current-change="handleCurrentChange"
                            :current-page="currentPage4"
                            :page-sizes="[5, 15, 20, 25]"
                            :page-size="5"
                            layout="total, sizes, prev, pager, next, jumper"
                            :total="totalRow">
                            </el-pagination>
                        </div>
                    </div>
                    <div v-show="commentvisible" style="text-align:center">
                        <el-card shadow="hover">
                            <font size="5px" color="blue">暂无评论</font>
                        </el-card>
                    </div>
                    <div class="user-face">
                        <div class="user-face-one">
                            <div>
                                <el-avatar :size="75" :src="picURL + circleUrl"></el-avatar>
                            </div>
                            <div class="face-font">
                                <font color="blue" v-show="checkin">请先登录</font>
                            </div>
                        </div>
                        <div style="width:100%">
                            <ucomment 
                            :con="usercomment.comment" 
                            style="width:100%;height:100%" 
                            ref="uc"
                            v-on:updateCommnetValue="updateCommnetValue"
                            >
                            </ucomment>
                        </div>
                    </div>
                </el-col>
            </div>
        </div>
    </div>
</template>
<script>
    import UserCommentEditor from './Editor.vue';
    import UserComments from './UserComments.vue';
    import VideoShow from './VideoPlayerDesc.vue';
    export default {
        name: '',
        components:{
            ucomment: UserCommentEditor,
            allusercomments:UserComments,
            videoShow:VideoShow,
        },
        data() {
            return {
                info:{},
                alldesc:[],
                checkin:true,
                comments:[], // 当前用户查看对象的所有的评论
                commentvisible:true,
                halloffame:false,
                usercomment:{ // 用户的评论
                    userid:"",
                    usernickname:"",
                    userlevel:"",
                    comdate:"",
                    toid:"",
                    comment:"",
                    userfaceaddress:"",
                    approvalnum:0,
                    superid:"",
                    othernickname:'',
                    ouserid:'',
                },
                circleUrl:'static/default/5ac1a18c-3142-4200-99e6-3d324931f65d.jpg', // 用户当前头像
                isSubmit:false,
                approveStatus:'el-icon-star-off',
                statusChange:false,
                picURL:'',
                currentPage4:1,
                pageSize:5,
                totalRow:0,
                // 用户评论或回复他人的评论或回复
                timeMaker: '',
                index: '',
                tellTo: false,
            }
        },
        created(){
            this.init();
        },
        beforeDestroy(){
            clearInterval(this.timeMaker);
        },
        methods: {
            init(){ // 从服务器端获取当前页面要展示的内容并初始化
                this.picURL = this.$picURL;
                sessionStorage.jump = "/teacherOrStudentDesc";
                // this.$cookie.set("jump", "/teacherOrStudentDesc");
                var id = sessionStorage.id.split(";");
                if (id[1] == "f" || id[1] == "F"){
                    this.halloffame = true;
                }
                this.usercomment.toid = id[0];
                this.getCommentsByPage(); // 获取老师或学生的所有评论
                var user = JSON.parse(sessionStorage.user);
                this.getDescInfo(); // 获取老师或学生的详细信息
                if (user == null){
                    return false;
                }
                this.checkin = false;
                this.usercomment.userid = user.userid;
                this.usercomment.usernickname = user.usernickname;
                this.usercomment.userlevel = user.userlevel;
                if (user.userfaceaddress !== ''){
                    this.usercomment.userfaceaddress = user.userfaceaddress;
                    this.circleUrl = user.userfaceaddress;
                } else {
                    this.usercomment.userfaceaddress = this.circleUrl;
                    this.circleUrl = this.$picURL + this.circleUrl;
                }
                let date = new Date();
                let month = date.getMonth() < 10?"0" + (date.getMonth() + 1):date.getMonth();
                let odate = `${date.getFullYear()}-${month}-${date.getDate()}`;
                const result = this.$axios.get("user/userreaderforteaandstu?toid=" + this.usercomment.toid + "&userid=" + user.userid + "&date=" + odate);
                result.then(response => {
                    if (response.data.status == 200){
                        for (let i = 0;i < response.data.useroperation.length;i++){
                            let item = response.data.useroperation[i];
                            if (item.operation == '点赞'){
                                this.statusChange=true;
                                this.approveStatus='el-icon-star-on';
                            }
                        }
                    }
                });
                this.timeMaker = setInterval(() => {
                    console.log("ok");
                    this.updateComments();
                }, 500);
            },
            updateComments(){
                var id = sessionStorage.id.split(";");
                var otherUserId = id[0].split(":");
                const result = this.$axios.get("comment/allcommentbypageanddate?toid=" + id[0] + "&otherid=" + "u:" + otherUserId[1] + "&comid=" + this.index);
                result.then(response => {
                    if (response.data.status == 200){
                        for (let i = 0;i < response.data.updatecomment.length;i++){
                            let item = response.data.updatecomment[i];
                            if (item.superid != '' && item.superid != null){
                                for (let j = 0;j < this.comments.length;j++){
                                    if (item.superid == this.comments[j].entity.comid){
                                        item["approve"] = "el-icon-star-off";
                                        item["istellto"] = false;
                                        item["selec"] = "selec" + item.comid;
                                        if (this.index < item.comid){
                                            this.index = item.comid;
                                        }
                                        this.comments[j].allSubComments.push(item);
                                    }
                                }
                                continue;
                            }
                            if (this.comments.length < this.pageSize) {
                                item["approve"] = "el-icon-star-off";
                                item["istellto"] = false;
                                item["selec"] = "selec" + item.comid;
                                let newItem = {
                                    entity: item,
                                    allSubComments:[],
                                };
                                newItem.allSubComments.push(item);
                                this.comments.push(newItem);
                                if (this.index < item.comid){
                                    this.index = item.comid;
                                }
                            }
                        }
                    }
                });
            },
            getDescInfo(){ // 获取当前用户查看对象的信息
                var id = sessionStorage.id.split(";");
                if (id[1] == "f" || id[1] == "F"){
                    this.halloffame = true;
                }
                const result = this.$axios.get("user/teaorstuinfo?id=" + id[0]);
                result.then((response) => {
                    this.info = response.data.teaorstu;
                    if (response.data.teaorstu.ufaceaddress != null){
                        this.info.ufaceaddress = this.$picURL + this.info.ufaceaddress;
                    } else {
                        this.info = response.data.teaorstu;
                        this.info.sfaceaddress = this.$picURL + this.info.sfaceaddress;
                    }
                });
            },
            // 获取当前用户查看对象的所有评论(使用分页展示)
            getCommentsByPage(){ 
                var id = sessionStorage.id.split(";");
                if (id[1] == "f" || id[1] == "F"){
                    this.halloffame = true;
                }
                this.comments=[];
                const result = this.$axios.get("/comment/allcommentbypage?toid=" + id[0] + "&currentPage=" + this.currentPage4 + "&pageSize=" + this.pageSize);
                result.then(response => {
                    if (response.data.status == 200){
                        if (response.data.allcomments.length == 0){
                            this.commentvisible = true;
                        } else {
                            this.commentvisible = false;
                            for (var i = 0;i < response.data.allcomments.length;i++){
                                var item = response.data.allcomments[i].allSubComments;
                                for (var j = 0;j < item.length;j++){
                                    item[j]["approve"] = "el-icon-star-off";
                                    item[j]["istellto"] = false;
                                    item[j]["selec"] = "selec" + item[j].comid;
                                }    
                                this.comments.push({
                                    entity:response.data.allcomments[i].entity,
                                    allSubComments:item,
                                });
                            }
                            this.totalRow=parseInt(response.data.totalRow);
                            this.getLastComment();
                        }
                    }
                });
            },
            goBack() {
                clearInterval(this.timeMaker);
                window.history.back();
                // var userselection = this.$cookie.get("tag");
                // if (userselection != null && userselection != ''){
                //     this.$cookie.remove("tag");
                //     this.$router.push("/otheruserdesc");
                //     return true;
                // }
                // if (this.halloffame){ // 返回名人堂页面
                //     this.$router.push("/hallOfFame");
                //     return true;
                // }
                // var category = this.$cookie.get("id");
                // var content = category.split(":"); // 返回指导老师页面
                // if (content[0] == 't' || content[0] == 'T'){
                //     this.$cookie.remove("id");
                //     this.$router.push("/teachers");
                // }
                // if (content[0] == 's' || content[0] == 'S'){ // 返回学生页面
                //     this.$cookie.remove("id");
                //     this.$router.push("/cadresED");
                // }
            },
            reset(){
                this.usercomment.comment = "";
            },
            submit(){
                let isTellTo = false;
                for (let i = 0;i < this.comments.length;i++){
                    for (let j = 0;j < this.comments[i].allSubComments.length;j++){
                        if (this.comments[i].allSubComments[j].istellto){
                            isTellTo = true;
                            break;
                        }
                    }
                }
                if  (!isTellTo){
                    var id = sessionStorage.id.split(";");
                    this.usercomment.toid = id[0];
                }
                var date = new Date();
                var month = date.getMonth() < 10?"0" + (date.getMonth() + 1):date.getMonth();
                var odate = `${date.getFullYear()}-${month}-${date.getDate()}`;
                this.usercomment.comdate = odate;
                const result = this.$axios.post("/comment/insertment",this.usercomment);
                result.then(response => {
                    if (response.data.status == 200){
                        this.$notify({
                            message:'评论成功',
                            type:'success',
                        });
                        this.$refs.uc.reset();
                        // this.getDescInfo();
                        for (let i = 0;i < this.comments.length;i++){
                            for (let j = 0;j < this.comments[i].allSubComments.length;j++){
                                if (this.comments[i].allSubComments[j].istellto){
                                    this.comments[i].allSubComments[j].istellto = false;
                                    let itemValue = this.comments[i].allSubComments[j].selec + "";
                                    this.$refs[itemValue][0].reset();
                                    this.usercomment.comment = "";
                                    this.usercomment.superid = "";
                                    this.usercomment.othernickname = "";
                                    this.usercomment.ouserid = "";
                                    this.usercomment.toid = "";
                                    break;
                                }
                            }
                        }
                        // this.getCommentsByPage(); // 重新获取评论
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
                });
            },
            toOther(userid){ // 跳转到评论区中评论用户的信息页面
                sessionStorage.otheruserid = "" + userid;
                // this.$cookie.set("otheruserid", userid);
                this.$router.push("/otheruserdesc");
            },
            changeApprovalNum(id, comid, approvalnum){
                if (!this.checkUserStatus()){
                    this.$notify({
                        message:'请先登录',
                        type:'info',
                    });
                    return false;
                }
                for (var i = 0;i < this.comments.length;i++){
                    var item = this.comments[i];
                    for (var j = 0;j < item.allSubComments.length;j++){
                        if (item.allSubComments[j].comid == comid){
                            if (this.comments[i].allSubComments[j].approve === "el-icon-star-off"){
                                this.comments[i].allSubComments[j].approve = "el-icon-star-on";
                                approvalnum = approvalnum + 1;
                                this.comments[i].allSubComments[j].approvalnum = approvalnum;
                                const result = this.$axios.get("/comment/updateapprovalnum?comid=" + comid + "&approvalnum=" + approvalnum);
                                result.then(response =>{
                                    if (response.data.status == 400){
                                        this.$notify({
                                            message:'网络错误',
                                            type:'error',
                                        });
                                    }
                                });
                                break;
                            } else if (this.comments[i].allSubComments[j].approve === "el-icon-star-on"){
                                this.comments[i].allSubComments[j].approve = "el-icon-star-off";
                                approvalnum = approvalnum - 1;
                                this.comments[i].allSubComments[j].approvalnum = approvalnum;
                                const result = this.$axios.get("/comment/updateapprovalnum?comid=" + comid + "&approvalnum=" + approvalnum);
                                result.then(response =>{
                                    if (response.data.status == 400){
                                        this.$notify({
                                            message:'网络错误',
                                            type:'error',
                                        });
                                    }
                                });
                                break;
                            }
                        }
                    }
                }
            },
            checkUserStatus(){
                var userInfo = JSON.parse(sessionStorage.user);
                if (userInfo === "" || userInfo == null){
                    return false;
                } else {
                    return true;
                }
            },
            tellToOthers(item,con){
                let user = JSON.parse(sessionStorage.user);
                if (user === '' || user == null){
                    this.$notify({
                        message:'请先登录',
                        type:'info',
                    });
                    return false;
                }
                for (let i = 0;i < this.comments.length;i++){
                    for (let j = 0;j < this.comments[i].allSubComments.length;j++){
                        if (this.comments[i].allSubComments[j].comid == con.comid){
                            this.comments[i].allSubComments[j].istellto = !this.comments[i].allSubComments[j].istellto;
                            if (this.comments[i].allSubComments[j].istellto){
                                this.usercomment.comment = "";
                                let itemValue = this.comments[i].allSubComments[j].selec + "";
                                this.$refs[itemValue][0].tellToOther("");
                                this.usercomment.superid = item;
                                this.usercomment.othernickname = con.usernickname;
                                this.usercomment.ouserid = con.userid;
                                this.usercomment.toid = "u:" + con.comid;
                            } else {
                                this.usercomment.comment = "";
                                let itemValue = this.comments[i].allSubComments[j].selec + "";
                                this.$refs[itemValue][0].tellToOther("");
                                this.usercomment.superid = "";
                                this.usercomment.othernickname = "";
                                this.usercomment.ouserid = "";
                                this.usercomment.toid = "";
                            }
                        } else {
                            this.comments[i].allSubComments[j].istellto = false;
                        }
                    }
                }
            },
            // 修改教师的点赞人数
            changeApproveNumForTea(item){
                this.statusChange=!this.statusChange;
                var date = new Date();
                var month = date.getMonth() < 10?"0" + (date.getMonth() + 1):date.getMonth();
                var odate = `${date.getFullYear()}-${month}-${date.getDate()}`;
                if (this.statusChange){
                    this.approveStatus='el-icon-star-on';
                    this.info.uthumbup = this.info.uthumbup + 1;
                    this.$axios.get("user/addteauthumbup?userid=" + this.usercomment.userid + "&toid=" + this.usercomment.toid + "&date=" + odate + "&operation=点赞");
                } else {
                    this.approveStatus='el-icon-star-off';
                    this.info.uthumbup = this.info.uthumbup - 1;
                    this.$axios.get("user/reteauthumbup?userid=" + this.usercomment.userid + "&toid=" + this.usercomment.toid + "&operation=点赞");
                }
            },
            // 修改学生的点赞人数
            changeApproveNumForStu(item){
                this.statusChange=!this.statusChange;
                var date = new Date();
                var month = date.getMonth() < 10?"0" + (date.getMonth() + 1):date.getMonth();
                var odate = `${date.getFullYear()}-${month}-${date.getDate()}`;
                if (this.statusChange){
                    this.approveStatus='el-icon-star-on';
                    this.info.sthumbup = this.info.sthumbup + 1;
                    this.$axios.get("user/addstuuthumbup?userid=" + this.usercomment.userid + "&toid=" + this.usercomment.toid + "&date=" + odate + "&operation=点赞");
                } else {
                    this.approveStatus='el-icon-star-off';
                    this.info.sthumbup = this.info.sthumbup - 1;
                    this.$axios.get("user/restuuthumbup?userid=" + this.usercomment.userid + "&toid=" + this.usercomment.toid + "&operation=点赞");
                }
            },
            updateCommnetValue(params){
                if (JSON.parse(sessionStorage.user) == null){
                    this.$notify({
                        message:'请先登录',
                        type:'error',
                    });
                    return false;
                }
                this.usercomment.comment = params;
                if (this.usercomment.comment == '' || this.usercomment.comment == null){
                    this.$notify({
                        message:'请输入内容',
                        type:'error',
                    });
                    return false;
                }
                this.submit();
            },
            handleSizeChange(val) {
                this.pageSize=val;
                this.getCommentsByPage();
            },
            handleCurrentChange(val) {
                this.currentPage4=val;
                this.getCommentsByPage();
            },
            // 获取所有评论中最后发布的评论
            getLastComment(){
                var index = "";
                if (this.comments.length == 0){
                    this.index = 0;
                    return;
                }
                for (let i = 0;i < this.comments.length;i++){
                    index = this.comments[i].entity.comid;
                    let item = this.comments[i].allSubComments;
                    for (let j = 0;j < item.length;j++){
                        if (index < item[j].comid){
                            index = item[j].comid;
                        }
                    }
                }
                this.index = index;
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
        width: 500px;
        float: left;
        margin-top: 20px;
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
        margin-top: 60px;
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
        /* display: flex;
        justify-content: space-between; */
        width:100%;
        height:100%;
        background-color:white;
        padding: 15px;
    }
</style>