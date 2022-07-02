<template>
    <div style="width:100%;height:100%;padding: 15px">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div style="margin: 15px">
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>系统</el-breadcrumb-item>
                    <el-breadcrumb-item>问题反馈</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <el-divider></el-divider>
            <div style="width:1300px;height:100%;margin: 0 auto">
                <el-col :span="28">
                    <el-card class="box-card">
                        <div slot="header" class="clearfix">
                            <span>反馈问题
                                <el-button style="float: right;" type="text" @click="userFeedbank">提交</el-button>
                            </span>
                        </div>
                        <div style="width:100%;height:100%">
                            <h3>问题描述</h3>
                            <quill-editor v-model="userfeedback.pcontent" style="width:100%;height:500px">
                            </quill-editor>
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
                userfeedback:{
                    uloginid:'',
                    pdate:'',
                    pcontent:'',
                    phandle:'',
                },
                rules: {
                    pcontent: [
                        { required: true, message: '请输入需要反馈的问题', trigger: 'blur' },
                    ],
                },
                toolbarTips: [ 
                    {Choice:'.ql-bold',title:'加粗'}, 
                    {Choice:'.ql-italic',title:'倾斜'}, 
                    {Choice:'.ql-underline',title:'下划线'}, 
                    {Choice:'.ql-header',title:'段落格式'}, 
                    {Choice:'.ql-strike',title:'删除线'}, 
                    {Choice:'.ql-blockquote',title:'块引用'}, 
                    {Choice:'.ql-code-block',title:'插入代码段'}, 
                    {Choice:'.ql-size',title:'字体大小'}, 
                    {Choice:'.ql-list[value="ordered"]',title:'编号列表'}, 
                    {Choice:'.ql-list[value="bullet"]',title:'项目列表'}, 
                    {Choice:'.ql-header[value="1"]',title:'h1'}, 
                    {Choice:'.ql-header[value="2"]',title:'h2'}, 
                    {Choice:'.ql-align',title:'对齐方式'}, 
                    {Choice:'.ql-color',title:'字体颜色'}, 
                    {Choice:'.ql-background',title:'背景颜色'}, 
                    {Choice:'.ql-image',title:'图像'}, 
                    {Choice:'.ql-video',title:'视频'}, 
                    {Choice:'.ql-link',title:'添加链接'}, 
                    {Choice:'.ql-formula',title:'插入公式'}, 
                    {Choice:'.ql-font',title:'字体'},
                    {Choice:'.ql-clean',title:'清除格式'}, 
                    {Choice:'.ql-indent[value="-1"]',title:'向左缩进'}, 
                    {Choice:'.ql-indent[value="+1"]',title:'向右缩进'}, 
                    {Choice:'.ql-direction',title:'文本方向'},
                    {Choice:'.ql-script[value="sub"]',title:'下标'},
                    {Choice:'.ql-script[value="super"]',title:'上标'}, 
                    {Choice:'.ql-header .ql-picker-label',title:'标题大小'}, 
                    {Choice:'.ql-header .ql-picker-item[data-value="1"]',title:'标题一'}, 
                    {Choice:'.ql-header .ql-picker-item[data-value="2"]',title:'标题二'}, 
                    {Choice:'.ql-header .ql-picker-item[data-value="3"]',title:'标题三'}, 
                    {Choice:'.ql-header .ql-picker-item[data-value="4"]',title:'标题四'}, 
                    {Choice:'.ql-header .ql-picker-item[data-value="5"]',title:'标题五'}, 
                    {Choice:'.ql-header .ql-picker-item[data-value="6"]',title:'标题六'}, 
                    {Choice:'.ql-header .ql-picker-item:last-child',title:'标准'}, 
                    {Choice:'.ql-size .ql-picker-item[data-value="small"]',title:'小号'}, 
                    {Choice:'.ql-size .ql-picker-item[data-value="large"]',title:'大号'}, 
                    {Choice:'.ql-size .ql-picker-item[data-value="huge"]',title:'超大号'}, 
                    {Choice:'.ql-size .ql-picker-item:nth-child(2)',title:'标准'}, 
                    {Choice:'.ql-align .ql-picker-item:first-child',title:'居左对齐'}, 
                    {Choice:'.ql-align .ql-picker-item[data-value="center"]',title:'居中对齐'}, 
                    {Choice:'.ql-align .ql-picker-item[data-value="right"]',title:'居右对齐'}, 
                    {Choice:'.ql-align .ql-picker-item[data-value="justify"]',title:'两端对齐'}
                ],
            }
        },
        methods:{
            async userFeedbank(){
                if (this.userfeedback.pcontent == ''){
                    this.$notify({
                        message:"请输入具体的问题",
                        type:'info',
                    });
                    return false;
                }
                let userInfo=JSON.parse(sessionStorage.user).userid;
                this.userfeedback.uloginid=userInfo.uloginid;
                this.userfeedback.phandle='未处理';
                let date = new Date();
                let pdate = date.getMonth() + 1;
                if (pdate < 10){
                    pdate = "0" + pdate;
                }
                this.userfeedback.pdate=`${date.getFullYear()}-${pdate}-${date.getDate()}`;
                const result =await this.$axios.post("/userfeedback/adduserfeedback", this.userfeedback);
                if (result.data.status == 200){
                    this.$notify({
                        message:result.data.statusText,
                        type:'success',
                    });
                } else {
                    this.$notify({
                        message:result.data.statusText,
                        type:'error',
                    });
                }
            },
        },
        mounted(){
            for(let item of this.toolbarTips){
                let tip = document.querySelector('.quill-editor ' + item.Choice)
                if (!tip) continue
                tip.setAttribute('title',item.title)
            }
        },
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
    width: 100%;
    height: 100%;
  }
</style>