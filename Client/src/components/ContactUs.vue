<template>
    <div style="width:100%;height:100%;padding: 15px">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div>
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>关于我们</el-breadcrumb-item>
                    <el-breadcrumb-item>联系我们</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <div class="introduction">
                <el-col :span="24">
                    <el-card shadow="hover">
                        <div class="intro"><font color = "#409EFF" size="5px">联系我们</font></div>
                        <el-divider></el-divider>
                        <div>
                            <label for="">新浪微博：<a href="https://weibo.com/glutsm">https://weibo.com/glutsm</a></label><br/>
                            <label for="">官方微信：桂工数模</label><br/>
                            <label for="">官方邮箱：glutsm@163.com</label><br/>
                            <label for="">协会网址：<router-link to="/home">http://www.glutsm.com</router-link></label><br/>
                            <label for="">联系地址：广西桂林市雁山区雁山镇雁山街319号桂林理工大学雁山校区</label>
                            <br/>
                            <br/>
                            <label for="">欢迎数学类相关网站与本站交换友情链接！</label>
                            <br/>
                            <br/>
                            <label for="">[我们将在收到您的邮件后3个工作日内回复]</label>
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

            }
        }
    }
</script>

<style scoped>
    .introduction{
        margin-top: 20px;
        font-size: bold;
        width: 100%;
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
        width: 32%;
        float: right;
    }
</style>