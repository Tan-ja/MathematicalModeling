<template>
    <div class="outside-div">
        <div style="width:1500px;heigth:100%;margin: 0 auto" v-show="!isUpdate">
            <div>
                <el-page-header @back="goBack" content="详情页面">
                </el-page-header>
            </div>
            <div class="introduction">
                <el-card shadow="hover">
                    <div class="intro"><font color = "#409EFF" size="5px">{{info.atitle}}</font></div>
                    <div class="intro-more">时间: {{info.adate}} 来源: {{info.afrom}} 评论: {{info.acomments}} 阅读: {{info.areaders}}</div> 
                    <el-divider></el-divider>
                    <div style="float:right">
                        <el-card style="width:110px">
                            <div style="margin-top:10px">
                                <el-button @click="updateHonor">修改</el-button>
                            </div>
                        </el-card>
                    </div>
                    <div style="clear:both">
                        <p class="ql-editor" v-html="info.acontentdesc"></p>
                    </div>
                </el-card>
            </div>
        </div>
        <div style="width:1500px;heigth:100%;margin: 0 auto" v-show="isUpdate">
            <UpdateOption
            ref="updateOption"
            >
            </UpdateOption>
        </div>
    </div>
</template>

<script>
    import updateOption from './UpdateHonor.vue';
    export default {
        name: '',
        components:{
            UpdateOption: updateOption,
        },
        data() {
            return {
                info:{},
                checkin:true,
                centerDialogVisible: false,
                isUpdate: false,
            }
        },
        created(){
            this.getOtherOptionInfo(); // 获取老师或学生的详细信息
        },
        methods: {
            // 获取协会荣誉，竞赛成绩，竞赛培训......相关选项的详细信息
            getOtherOptionInfo(){
                var other = sessionStorage.id;
                var id = other.split(":");
                sessionStorage.category = id[0];
                const result = this.$axios.get("academic/adesc?adid=" + id[1]);
                result.then(response => {
                    if (response.data.status == 200){
                        this.info = response.data.academic;
                    }
                });
            },
            goBack() {
                this.$parent.goBack();
                // var category = sessionStorage.id;
                // var content = category.split(":");
                // switch(content[0]){
                //     case "协会荣誉": // 协会荣誉
                //         this.$router.push("/honor");
                //         break;
                //     case "竞赛成绩": // 竞赛成绩
                //         this.$router.push("/result");
                //         break;
                //     case "宣传视频": // 视频
                //         this.$router.push("/video");
                //         break;
                //     case "试题论文": // 试题论文
                //         this.$router.push("/exampapers");
                //         break;
                //     case "学习资料": // 学习资料
                //         this.$router.push("/learningmaterials");
                //         break;
                //     case "学术资讯": // 学术资讯
                //         this.$router.push("/academicinformation");
                //         break;
                //     case "竞赛培训": // 竞赛培训
                //         this.$router.push("/contesttraining");
                //         break;
                // }
            },
            backToJust(){
                this.isUpdate = false;
            },
            updateHonor(){
                var category = sessionStorage.id;
                var content = category.split(":");
                sessionStorage.adid = content[1];
                this.isUpdate = !this.isUpdate;
                this.$refs.updateOption.getDate();
                // this.$cookie.set("adid", content[1]);
                // this.$router.push("/updatehonor");
            },
        },
    }
</script>

<style scoped>
   .introduction{
        margin-top: 20px;
        font-size: bold;
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
        width: 500px;
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
        background-color:white;
        /* padding: 15px; */
    }
</style>