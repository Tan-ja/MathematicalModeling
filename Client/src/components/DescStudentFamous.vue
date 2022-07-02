<template>
    <div style="width:100%;height:870px;background-color:white;padding: 15px">
        <div>
            <el-page-header @back="goBack" content="详情页面">
            </el-page-header>
        </div>
        <div class="introduction">
            <el-col :span="16">
                <el-card shadow="hover">
                    <div class="intro"><font color = "#409EFF" size="5px">{{stuInfo.sposition}}---{{stuInfo.sname}}</font></div>
                    <div class="intro-more">时间: {{stuInfo.sdate}} 来源: {{stuInfo.sfrom}} 评论: {{stuInfo.scomment}} 阅读: {{stuInfo.sreaders}}</div> 
                    <el-divider></el-divider> 
                    <!-- 指导老师头像 -->
                    <div class="image-size">
                        <el-image :src="stuInfo.sfaceaddress" class="image-size-sub"></el-image>
                    </div>
                    <!-- 指导老师的个人详细信息 -->
                    <div style="margin-top:15px" v-for="desc in stuDesc" :key="desc.did">
                        <p>{{desc.udesc}}</p>
                    </div>
                </el-card>
            </el-col>
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
                src: 'https://cube.elemecdn.com/6/94/4d3ea53c084bad6931a56d5158a48jpeg.jpeg',
            }
        },
        created(){
            this.getTeacherInfo();
        },
        methods: {
            getTeacherInfo(){
                var newValue = sessionStorage.fid;
                if (newValue != null || newValue != undefined){
                    const result = this.$axios.get("user/stuinfo?stusid=" + newValue);
                    result.then((response) => {
                        this.stuInfo = response.data.student;
                        for (var i = 0;i < response.data.studesc.length;i++){
                            var teadesc = {};
                            teadesc["did"] = i;
                            teadesc['udesc'] = response.data.studesc[i];
                            this.stuDesc.push(teadesc);
                        }
                    });
                }
            },
            goBack() {
                this.$router.push("/cadresED");
            }
        },
    }
</script>

<style scoped>
    .introduction{
        margin:10px auto;
        font-size: bold;
        color: #409EFF;
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
    .tea-info-more{
        margin-top: 15px;
    }
</style>