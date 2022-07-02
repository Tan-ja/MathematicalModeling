<template>
    <div style="width:100%;height:100%">
        <!-- 展示当前学生操作进度条 -->
        <!-- 当前用户已经填写参赛人信息 -->
        <div v-show="ac == 0"> 
            <el-card class="box-card">
                <div slot="header" class="clearfix" style="text-align:center">
                    <span><font color = "#409EFF" size="5px">{{updateCurrentTip}}</font></span>
                </div>
                <div style="width:100%;height:100%" v-loading="loading">
                    <div style="width:100%;height:200px">
                        &nbsp;
                    </div>
                </div>
            </el-card>
        </div>
        <!-- 正在审核 -->
        <div v-show="ac == 1">
            <el-card class="box-card">
                <div slot="header" class="clearfix" style="text-align:center">
                    <span><font color = "#409EFF" size="5px">{{updateCurrentTip}}</font></span>
                </div>
                <div style="width:100%;height:100%" v-loading="loading">
                    <div style="width:100%;height:200px">
                        &nbsp;
                    </div>
                </div>
            </el-card>
        </div>
        <!-- 审核通过 -->
        <div v-show="ac == 2">
            <el-card class="box-card">
                <div slot="header" class="clearfix" style="text-align:center">
                    <span><font color = "#409EFF" size="5px">{{updateCurrentTip}}</font></span>
                </div>
                <div style="width:100%;height:100%">
                    <div style="width:100%;height:100px">
                        <div style="width:100%;height:50%">
                            <span><font color = "#409EFF" size="4px">恭喜你,你的审核已经通过,点击<font color = "green" size="4px">开始缴费</font>按钮即可开始缴费</font></span>
                        </div>
                        <div style="width:100%;height:50%">
                            <el-button type="success" style="float:right" @click="startToPayCost">开始缴费</el-button>
                        </div>
                    </div>
                </div>
            </el-card>
        </div>
        <!-- 审核不通过 -->
        <div v-show="ac == 3">
            <el-card class="box-card">
                <div slot="header" class="clearfix" style="text-align:center">
                    <span><font color = "#409EFF" size="5px">{{updateCurrentTip}}</font></span>
                </div>
                <div style="width:100%;height:100%">
                    审核反馈:
                    <div>{{updateReviewResult}}</div>
                </div>
            </el-card>
        </div>
        <!-- 审核通过后,缴费 -->
        <div v-show="ac == 4">
            <el-card class="box-card">
                <div slot="header" class="clearfix" style="text-align:center">
                    <span><font color = "#409EFF" size="5px">{{updateCurrentTip}}</font></span>
                </div>
                <div style="width:100%;height:30px">
                    <div style="width:100%;height:50%">
                        <span><font color = "#409EFF" size="4px">请点击确认缴费按钮<font color = "green" size="4px">确认缴费</font></font></span>
                    </div>
                    <div id="qrcode" style="width:200px;height:200px;margin: 0 auto"></div>
                    <div style="width:100%;height:30px">
                        <el-button type="success" style="float:right" @click="sureToPayCost">确认缴费</el-button>
                    </div>
                </div>
            </el-card>
        </div>
        <!-- 返回报名号 -->
        <div v-show="ac == 5">
            <el-card class="box-card">
                <div slot="header" class="clearfix" style="text-align:center">
                    <span><font color = "#409EFF" size="5px">{{updateCurrentTip}}</font></span>
                </div>
                <div style="width:100%;height:100%">
                    <div style="width:100%;height:50px;text-align:center">
                        <span><font color = "#409EFF" size="4px">这是您的报名号:123456</font></span>
                    </div>
                    <div style="width:100%;height:30px">
                        <span><font color = "#409EFF" size="4px">请点击确认按钮,完成本次比赛的报名</font></span>
                    </div>
                    <div style="width:100%;height:30px">
                        <el-button type="success" style="float:right" @click="completeTheRegistration">确认</el-button>
                    </div>
                </div>
            </el-card>
        </div>
        <div v-if="this.ac == 6">
            <el-card class="box-card">
                <p style="text-align:center"><font color = "#409EFF" size="5px">您已成功报名此次比赛</font></p>
            </el-card>
        </div>
        <el-steps :active="updateCurrentStatus" align-center finish-status="success" style="margin-top: 20px" v-if="ac != 7">
            <el-step title="步骤1" description="填写参赛人信息"></el-step>
            <el-step title="步骤2" description="审核"></el-step>
            <el-step title="步骤3" description="缴费"></el-step>
            <el-step title="步骤4" description="返回报名号"></el-step>
        </el-steps>
        <div v-if="ac == 7">
            <el-card class="box-card">
                <div slot="header" class="clearfix" style="text-align:center">
                    <span><font color = "#409EFF" size="5px">{{updateCurrentTip}}</font></span>
                </div>
                <div style="width:100%;height:100%" v-loading="loading">
                    <div style="width:100%;height:200px">
                        &nbsp;
                    </div>
                </div>
            </el-card>
        </div>
    </div>
</template>

<script>
    import QRCode from 'qrcodejs2'; // 引入qrcode
    export default {
        props:['reviewResult'],
        name: '',
        data() {
            return {
                loading: true,
                editorOption: {
                    theme: 'bubble',
                    modules: {
                        toolbar: [],
                    }
                },
                ac: 0,
                text: 'https://www.baidu.com',
            }
        },
        methods:{
            startToPayCost(){
                this.ac = 4;
                this.updateNewStatus();
            },
            sureToPayCost(){
                this.ac = 5;
                this.updateNewStatus();
            },
            completeTheRegistration(){
                this.ac = 6;
                this.updateNewStatus();
            },
            updateNewStatus(){
                this.$emit('updateNewStatus', this.ac);
            },
            qrcode() {
                new QRCode('qrcode', {
                    width: 200,
                    height: 200,
                    text: 'http://192.168.240.1:8888/api/upload/payformatch?phoneNum=18277971822', // 二维码地址
                    colorDark: '#000',
                    colorLight: '#fff'
                });
            },
            updateNewStatusTwo(newValue){
                this.ac = newValue;
            },
        },
        mounted(){
            this.qrcode();
        },
        computed:{
            updateCurrentStatus(){
                if (this.ac == 0){ // 参赛选手已经填写参赛人信息
                    return 0;
                } else if (this.ac == 1 || this.ac == 3){ // 正在审核或者审核不通过
                    return 1;
                } else if (this.ac == 2){ // 审核通过
                    return 1;
                } else if (this.ac == 4){ // 缴费
                    return 2;
                } else if (this.ac == 5) { // 系统返回报名号
                    return 3;
                } else {
                    return 4;
                }
            },
            updateCurrentTip(){
                if (this.ac == 0){ // 参赛选手已经填写参赛人信息
                    return "已填写参赛人信息";
                } else if (this.ac == 1){ // 正在审核或者审核不通过
                    return "您的申请正在审核";
                } else if (this.ac == 3){
                    return "抱歉,您的审核未通过";
                } else if (this.ac == 2){ // 审核通过
                    return "恭喜您,审核通过";
                } else if (this.ac == 4){ // 缴费
                    return "您的审核已通过,请尽快缴费";
                } else { // 系统返回报名号
                    return "这是您的报名号";
                }
            },
            updateReviewResult(){
                if (this.reviewResult == null){
                    return "";
                }
                return this.reviewResult;
            },
        },
    }
</script>

<style scoped>
    .text {
    font-size: 14px;
  }

  .item {
    padding: 18px 0;
  }

  .box-card {
    width: 100%;
  }
  .clearfix:before,
  .clearfix:after {
    display: table;
    content: "";
  }
  .clearfix:after {
    clear: both
  }
</style>