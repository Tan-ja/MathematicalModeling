<template>
    <div style="width:100%;height:100%;padding: 15px">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div>
                <el-page-header @back="goBack" content="赛事详情">
                </el-page-header>
            </div>
            <div class="introduction">
                <el-col :span="28">
                    <el-card class="box-card">
                        <div slot="header" class="clearfix" style="text-align: center;">
                            <span><font color = "#409EFF" size="5px">{{matchInfo.mtitle}}</font></span>
                        </div>
                        <div>
                            <font size="5px">比赛内容详情</font>
                        </div>
                        <div>
                            <el-card style="width:100%;height:100%;margin-top:10px">
                                <quill-editor v-model="matchInfo.mdesc" :options="editorOption" style="width:100%;height:100%" disabled>
                                </quill-editor>
                            </el-card>
                        </div>
                        <div>
                            <el-button style="float: right;margin-bottom:10px;margin-top:10px" @click="participateCompetition">报名参赛</el-button>
                        </div>
                    </el-card>
                </el-col>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                matchInfo:{},
                editorOption: {
                    theme: 'bubble',
                    modules: {
                        toolbar: [],
                    }
                },
            }
        },
        methods:{
            goBack() {
                sessionStorage.removeItem("matchid");
                this.$router.push("/allmatch");
            },
            participateCompetition(){
                // 向服务端发送请求判断当前用户是否已经报名
                if (sessionStorage.user == undefined){
                    this.$notify({
                        message:'请先登录',
                        type:'info',
                    });
                    return false;
                }
                let stuNum = userinfo.ustunum;
                let matchId = sessionStorage.matchid ;
                const result = this.$axios.get("teaminfo/checkrepeatpar?stunum=" + stuNum + "&compeid=" + matchId);
                let isRepeat = false;
                result.then((response) => {
                    if (response.data.status != 200){
                        this.$notify({
                            message: response.data.statusText,
                            type: 'error',
                        });
                        isRepeat = true;
                        if (!isRepeat){
                            this.$router.push("/participatematch");
                        }
                    }
                });
            },
        },
        created(){
            // this.$cookie.set("jump", "matchdescinfo");
            let matchId = sessionStorage.matchid;
            const result = this.$axios.get("matchinfo/getmatchbyid?id=" + matchId);
            result.then(response => {
                if (response.data.status == 200){
                    this.matchInfo = response.data.matchById;
                }
            });
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
  }
  
</style>