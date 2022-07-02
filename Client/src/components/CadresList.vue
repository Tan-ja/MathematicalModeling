<template>
    <div style="width:100%;height:870px;background-color:white;padding: 15px">
        <div>
            <el-breadcrumb separator-class="el-icon-arrow-right">
                <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                <el-breadcrumb-item>关于我们</el-breadcrumb-item>
                <el-breadcrumb-item>干部名录</el-breadcrumb-item>
            </el-breadcrumb>
        </div>
        <el-divider></el-divider>
        <div class="introduction">
            <el-col :span="16">
                <el-card shadow="hover" v-show="noOne">
                    <div class="intro"><font color = "#409EFF" size="5px">暂无信息</font></div>
                    <el-divider></el-divider>
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
                src: 'https://cube.elemecdn.com/6/94/4d3ea53c084bad6931a56d5158a48jpeg.jpeg',
                imagesTea:[],
                noOne:"true",
            }
        },
        created(){
            
        },
    }
</script>

<style scoped>
    .time {
    font-size: 13px;
    color: #999;
  }
  
   .bottom {
    margin-top: 13px;
    line-height: 12px;
  }

   .button {
    padding: 0;
    float: right;
  }

   .image {
    width: 100%;
    display: block;
    height: 80%;
  }

    .clearfix:before,
    .clearfix:after {
      display: table;
      content: "";
    }
  
    .clearfix:after {
      clear: both
    }
    .image-size{
      width: 350px;
      height: 230px;
      float: left;
      margin-right: 15px;
      margin-top: 19px;
      position: relative;
    }
    .image-size-sub{
      width: 100%;
      height: 100%;
    }
    .introce{
      position: absolute;
      background-color: #45a4b2;
      bottom: 0px;
      width: 100%;
      text-align: center;
      height: 30px;
      opacity: 0.8;
    }
    .con-cla{
      margin-top: 3px;
      color: #eef6f7;
    }
    .introce-more{
      position: absolute;
      background-color: #45a4b2;
      bottom: 0px;
      width: 100%;
      height: 100%;
      opacity: 0.9;
    }
    .introduction{
        margin:10px auto;
        font-size: bold;
        color: #409EFF;
    }
    .intro{
        text-align: center;
    }
    .div-other{
        margin-left: 10px;
        width: 300px;
        float: right;
    }
    .otherone{
        margin: 0px auto 10px 10px;
        height: 80px;
    }
</style>