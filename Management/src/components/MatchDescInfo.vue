<template>
    <div class="outside-div">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div>
                <el-page-header @back="goBack" content="详情页面">
                </el-page-header>
            </div>
            <div class="introduction">
                <el-col :span="28">
                    <div>
                        <p class="ql-editor" v-html="matchinfo.mdesc"></p>
                    </div>
                    <div>
                        <el-card class="box-card">
                            <div slot="header" class="clearfix">
                                <span><font size="4px" color="#409EFF">统计信息</font></span>
                                <a style="float: right" :href="action" v-if="totalNum != 0">
                                    <el-button>导出</el-button>
                                </a>
                            </div>
                            <div v-if="totalNum != 0">
                                <p><font size="4px" color="#409EFF">总报名人数:&nbsp;{{totalNum}}</font></p>
                            </div>
                            <!-- <div style="width:100%;height:100%" > -->
                                <barshow
                                ref="barpic"
                                v-if="totalNum != 0"
                                :name="proIndexName"
                                :value="proIndexValue"
                                >
                                </barshow>
                            <!-- </div> -->
                            <div v-if="totalNum == 0" style="text-align:center">
                                <font color="blue" size="5px">暂无数据</font> 
                            </div>
                        </el-card>
                    </div>
                </el-col>
            </div>
        </div>
    </div>
</template>

<script>
    import barchart from './BarChart';
    export default {
        name: '',
        components:{
            barshow:barchart,
        },
        data() {
            return {
                matchinfo:{},
                editorOption: {
                    theme: 'bubble',
                    modules: {
                        toolbar: [],
                    }
                },
                totalNum: 0,
                proIndexName: [],
                proIndexValue: [],
                action: '',
            }
        },
        mounted(){
            this.getMatchDesc();
        },
        methods:{
            getMatchDesc(){
                let matchid = sessionStorage.matchid;
                let result = this.$axios.get("matchinfo/getmatchbyid?id=" + matchid);
                result.then((response) => {
                    if (response.data.status == 200){
                        this.matchinfo=response.data.matchById;
                        this.totalNum=response.data.totalnum;
                        this.proIndexName = response.data.allindexname;
                        this.proIndexValue = response.data.allindexvalue;
                        let matchid = sessionStorage.matchid;
                        const resultTwo = this.$axios.get("matchinfo/exportparticipant?id=" + matchid);
                        resultTwo.then((response) => {
                            if (response.data.status == 200){
                                this.action = this.$picURL + response.data.documentpath;
                            }
                        });
                    }
                });
            },
            goBack(){
                this.$router.push("/allmatch");
            },
        },
    }
</script>

<style scoped>
    .introduction{
        margin-top: 20px;
        font-size: bold;
        float: left;
        width: 1500px;
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
        width: 400px;
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
        width:1500px;
        height:100%;
        background-color:white;
        padding: 15px;
        margin: 0 auto;
        background-color: white;
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