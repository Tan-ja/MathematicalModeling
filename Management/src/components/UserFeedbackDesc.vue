<template>
    <div style="width:1500px;padding: 15px;background-color: white;margin: 0 auto">
        <div style="width:1500px;margin: 0 auto">
            <div>
                <el-page-header @back="goBack" content="用户反馈详情页面">
                </el-page-header>
            </div>
            <div>
                <el-card class="box-card">
                    <div slot="header" class="clearfix">
                        <span>反馈问题内容</span>
                    </div>
                    <div>
                        <p class="ql-editor" v-html="userfeedback.pcontent"></p>
                    </div>
                </el-card>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                userfeedback:{},
            }
        },
        methods:{
            goBack() {
                this.$router.push("/userfeedback");
            },
            async getUserFeedback(){
                const result = await this.$axios.get("/userfeedback/getuserfeedbackbypid?pid=" + sessionStorage.pid);
                if (result.data.status == 200){
                    this.userfeedback=result.data.userfeedback;
                } else {
                    this.$message({
                        message:result.data.statusText,
                        type:'error',
                    });
                    return false;
                }
            },
        },
        created(){
            this.getUserFeedback();
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
    width: 1500px;
    height: 600px;
    margin-top: 30px;
  }
</style>