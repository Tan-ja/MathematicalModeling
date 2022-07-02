<template>
    <div>
        <el-card style="width:100%;margin-top:20px;height:100%" v-for="con in comments" :key="con.entity.comid">
            <div>
                <div style="float:left;margin-right:15px">
                    <el-avatar :size="50" :src="picURL + con.entity.userfaceaddress"></el-avatar>
                </div>
                <div>
                    <div>
                        <el-link :underline="false"><font color="#49d2e2" @click="toOther(con.entity.userid)">{{con.entity.usernickname}}</font>&nbsp;</el-link>
                        <el-tag
                            type="danger"
                            color="red"
                            size="mini"
                            effect="dark">
                            {{con.entity.userlevel}}
                        </el-tag>
                    </div>
                    <div>
                        {{con.entity.comdate}}
                    </div>
                </div>
            </div>
            <div style="clear:both;width:100%;height:100%" v-html="con.entity.comment">
            </div>
            <div>
                <el-button type="warning" :icon="con.approve" size="mini" @click="changeApprovalNum(con.entity.toid, con.entity.comid, con.entity.approvalnum)" circle></el-button>&nbsp;{{con.approvalnum}}
                <i class="el-icon-chat-dot-round" @click="tellToOthers(con)">回复</i>
            </div>
        </el-card>

    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                toid:'',
                picURL:'',
                comments:[],
            }
        },
        methods:{
            getAllUserComments(){
                this.picURL=this.$picURL;
                sessionStorage.jump = "/teacherOrStudentDesc";
                // this.$cookie.set("jump", "/teacherOrStudentDesc");
                var id = sessionStorage.id.split(";");
                if (id[1] == "f" || id[1] == "F"){
                    this.halloffame = true;
                }
                this.toid = id[0];
                const result = this.$axios.get("/comment/allcommentbypage?toid=" + this.toid + "&currentPage=1" + "&pageSize=5");
                result.then(response => {
                    // if (response.data.comments.length == 0){
                    //     this.commentvisible = true;
                    // } else {
                    //     this.comments=[];
                    //     for (var i = 0;i < response.data.comments.length;i++){
                    //         var item = response.data.comments[i];
                    //         item["approve"] = "el-icon-star-off"; // 控制是否修改已有评论的赞成数量
                    //         this.comments.push(item);
                    //     }
                    //     this.commentvisible = false;
                    // }
                    console.log(response);
                    this.comments=response.data.allcomments;
                });
            }
        },
        created(){
            this.picURL=this.$picURL;
            this.getAllUserComments();
        },
    }
</script>

<style scoped>
    .introduction{
        /* margin:10px auto; */
        margin-top: 20px;
        font-size: bold;
        float: left;
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
        height:870px;
        background-color:white;
        padding: 15px;
    }
</style>