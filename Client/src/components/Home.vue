<template>
    <el-container class="el-container">
        <el-header>
            <div style="width:1500px;margin: 0 auto">
                <div style="width:500px;height:80px;float:left">
                    <img :src="titleImage" style="width:50px;height:50px;float:left;margin-top:15px"/>
                    <font style="margin-top:40px" size="7px">学科竞赛网站</font>
                </div>
                <div style="width:500px;height:80px;float:right">
                    <el-input placeholder="请输入内容" v-model="search" class="input-with-select" style="width:300px">
                        <el-button slot="append" icon="el-icon-search" @click="searchForContent"></el-button>
                    </el-input>
                    <el-button type="info" size="mini" @click="check" plain style="margin-top:20px">登录</el-button>
                    <el-button type="info" size="mini" @click="dialogVisible = true">安全退出</el-button>
                </div>
                <el-dialog
                title="提示"
                :visible.sync="dialogVisible"
                width="30%"
                center>
                <span>确认退出?</span>
                <span slot="footer" class="dialog-footer">
                    <el-button @click="dialogVisible = false">取 消</el-button>
                    <el-button type="primary" @click="quit">确 定</el-button>
                </span>
                </el-dialog> 
                <el-dialog
                title="用户登录"
                :visible.sync="toCheck"
                width="30%"
                center>
                <div v-show="currentUser">
                    <el-form :model="account" :rules="rules" ref="loginForm" label-width="100px" class="demo-ruleForm">
                        <el-form-item prop="uloginid">
                            <el-input v-model="account.uloginid" type="text" suffix-icon="el-icon-s-check" placeholder="请输入账号"></el-input>
                        </el-form-item>
                        <el-form-item prop="upassword">
                            <el-input v-model="account.upassword" type="password" placeholder="请输入密码" :show-password="true" @keyup.enter.native="login"></el-input>
                        </el-form-item>
                        <el-form-item>
                            <el-button type="info" :plain="true" @click="resetForm" size="small">重置</el-button>
                            <el-button type="primary" :plain="true" @click="login" size="small">登录</el-button>
                            &nbsp;&nbsp;
                            <label for=""><font color="blue">还没有账号?</font></label>
                            <router-link to="/registry">快速注册</router-link>
                        </el-form-item>
                    </el-form>
                </div>
                <div  v-show="!currentUser">
                    <h3>您已登录,请先退出再进行登录。</h3>
                </div>
                </el-dialog>
            </div>
        </el-header>
        <el-header>
            <div v-show="showTotal" style="margin: 0 auto">
                <el-menu
                default-active="menuData[0].mid"
                class="el-menu-demo"
                mode="horizontal"
                router
                background-color="#303133"
                text-color="#fff"
                active-text-color="#ffd04b">
                <el-submenu :index="item.mid + ''"
                    v-for="item in menuData" 
                    :key="item.mid">
                        <template slot="title">
                        <i :class="item.icon"></i>
                        <span>{{item.mtitle}}</span>
                        </template>
                        <el-menu-item :index="subItem.path + ''" v-for="subItem in item.children" :key="subItem.sids">{{subItem.stitle}}</el-menu-item>
                </el-submenu>
                </el-menu>
            </div>
        </el-header>
        <el-container>
            <!-- 菜单:两种方式(一种菜单目录的数据是动态生成的(不同的用户有不同权限,所以生成不同的菜单目录) | 静态的) -->
            <!-- <el-aside :width="isCollapse?'64px':'200px'" class="el-aside">
                <div class="closemenustyle" @click="openAndclose">|||</div>
                <el-menu
                default-active="menuData[0].mid"
                class="el-menu-vertical-demo"
                background-color="#545c64"
                text-color="#fff"
                :collapse="isCollapse"
                unique-opened
                :collapse-transition="false"
                router
                active-text-color="#ffd04b">
                <el-submenu :index="item.mid + ''"
                v-for="item in menuData" 
                :key="item.mid">
                    <template slot="title">
                    <i :class="item.icon"></i>
                    <span>{{item.mtitle}}</span>
                    </template>
                    <el-menu-item :index="subItem.path + ''" v-for="subItem in item.children" :key="subItem.sids">{{subItem.stitle}}</el-menu-item>
                </el-submenu>
                </el-menu>
            </el-aside> -->
            <el-container>
                <el-main class="el-main">
                    <div>
                        <el-dialog
                        title="温馨提示"
                        :visible.sync="userCheckIn"
                        width="30%"
                        >
                        <span>检测到您未登录，部分功能将无法使用，是否前往登录</span>
                        <span slot="footer" class="dialog-footer">
                            <el-button @click="userCheckIn = false">放弃</el-button>
                            <el-button type="primary" @click="goToLogin">前往登录</el-button>
                        </span>
                        </el-dialog>
                    </div>
                    <div>
                        <el-dialog
                        title="温馨提示"
                        :visible.sync="closeCoo"
                        width="30%"
                        >
                        <span>检测到您已关闭cookie，网站的某些功能将无法使用</span>
                        <span slot="footer" class="dialog-footer">
                            <el-button @click="closeCoo = false">确认</el-button>
                        </span>
                        </el-dialog>
                    </div>
                    <el-dialog
                    title="温馨提示"
                    :visible.sync="sendByEmail"
                    width="30%"
                    >
                    <span>是否允许通过邮箱通知您竞赛的信息</span>
                    <span slot="footer" class="dialog-footer">
                        <el-button @click="sendByEmail = false">取 消</el-button>
                        <el-button type="primary" @click="sureToSendByEmail">接受</el-button>
                    </span>
                    </el-dialog>
                    <router-view/>
                </el-main>
                <!-- <el-footer class="footer">
                </el-footer> -->
            </el-container>
        </el-container>
    </el-container>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                search:'',
                account:{
                    uloginid:"",
                    upassword:"",
                },
                outlineaccount:{
                    uloginid:"",
                    upassword:"",
                },
                isCollapse:false,
                dialogVisible: false,
                isShow:false,
                toCheck:false,
                isGuest:false,
                timer:"",
                titleImage: this.$picURL + 'static/system/a8444047-373c-4511-9ee1-2660bb9e49e1.jpg',
                rules:{
                    uloginid: [
                        { required: true, message: '请输入账号', trigger: 'blur' },
                        { min: 6, max: 32, message: '长度在 6 到 32 个字符', trigger: 'blur' }
                    ],
                    upassword: [
                        { required: true, message: '请输入密码', trigger: 'blur' },
                        { min: 4, max: 20, message: '长度在 4 到 20 个字符', trigger: 'blur' }
                    ],
                },
                menuData:[
                    {
                        mid:1001,
                        mtitle:"个人中心",
                        icon:"el-icon-s-custom",
                        children:[
                            {sid:100101,stitle:"个人信息",path:"/userinfo"},
                            {sid:100102,stitle:"参赛信息",path:"/personalentryinfo"},
                        ],
                    },
                    {
                        mid:1002,
                        mtitle:"数模风情",
                        icon:"el-icon-picture-outline-round",
                        children:[
                            {sid:100201,stitle:"名师指导",path:"/teachers"},
                            {sid:100202,stitle:"干部风采",path:"/cadresED"},
                            {sid:100203,stitle:"协会荣誉",path:"/associationHonor"},
                            {sid:100204,stitle:"竞赛成绩",path:"/competitionResults"},
                            {sid:100205,stitle:"宣传视频",path:"/propaganda"},
                        ],
                    },
                    {
                        mid:1003,
                        mtitle:"资源推荐",
                        icon:"el-icon-document",
                        children:[
                            {sid:100301,stitle:"试题论文",path:"/examPapers"},
                            {sid:100302,stitle:"学习资料",path:"/learningMaterials"},
                            {sid:100303,stitle:"书籍推荐",path:"/booksRecommended"},
                            {sid:100304,stitle:"常用软件",path:"/commonlySoftware"},
                            {sid:100305,stitle:"优秀网站",path:"/goodWebSite"},
                        ],
                    },
                    {
                        mid:1004,
                        mtitle:"学术动态",
                        icon:"el-icon-s-promotion",
                        children:[
                            {sid:100401,stitle:"学术资讯",path:"/academicAdvisory"},
                            {sid:100402,stitle:"竞赛培训",path:"/contestTraining"},
                            {sid:100403,stitle:"竞赛信息",path:"/allmatch"},
                        ],
                    },
                    {
                        mid:1005,
                        mtitle:"特别专题",
                        icon:"el-icon-s-opportunity",
                        children:[
                            {sid:100501,stitle:"名人堂",path:"/hallOfFame"},
                        ],
                    },
                    {
                        mid:1006,
                        mtitle:"关于我们",
                        icon:"el-icon-s-custom",
                        children:[
                            {sid:100601,stitle:"协会简介",path:"/introduction"},
                            {sid:100602,stitle:"组织结构",path:"/structure"},
                            {sid:100603,stitle:"发展历程",path:"/history"},
                            // {sid:600101,stitle:"干部名录",path:"/cadresList"},
                            {sid:100604,stitle:"联系我们",path:"/contactUs"},
                        ],
                    },
                    {
                        mid:1007,
                        mtitle:"社团活动",
                        icon:"el-icon-s-custom",
                        children:[
                            {sid:100701,stitle:"社团活动",path:"/clubacctivities"},
                        ],
                    },
                    {
                        mid:1008,
                        mtitle:"更多功能",
                        icon:"el-icon-s-custom",
                        children:[
                            {sid:100801,stitle:"问题反馈",path:"/problemfeedback"},
                        ],
                    },
                    {
                        mid:1009,
                        mtitle:"学科竞赛知识",
                        icon:"el-icon-s-custom",
                        children:[
                            {sid:100801,stitle:"学科竞赛介绍",path:"/knowledgeofsc"},
                        ],
                    },
                ],
                backgroundImgs:[
                    {mid:"1", src:"http://www.glutsm.com/themes/glutsm/images/bg-01.jpg"},
                    {mid:"2", src:"http://www.glutsm.com/themes/glutsm/images/bg-03.jpg"},
                    {mid:"3", src:"http://www.glutsm.com/themes/glutsm/images/bg-04.jpg"},
                ],
                currentUser:{},
                showTotal:true,
                windowWidth: document.documentElement.clientWidth,  //实时屏幕宽度
                windowHeight: document.documentElement.clientHeight,   //实时屏幕高度
                // 用户登录
                userCheckIn: false,
                // 用户选择关闭cookie
                closeCoo: false,
                // 用户是否允许通过邮箱推送竞赛通知
                sendByEmail: false,
            }
        },
        destroyed(){
            clearInterval(this.timer);
        },
        methods: {
            backToPrevious(){
                this.$router.push(sessionStorage.jump);
            },
            login(){
                // 转到主页面
                // 对账号和密码进行验证
                if(this.account.uloginid == "" || this.account.upassword == ""){
                    this.$notify({
                        message: '请输入账号和密码',
                        type: 'error',
                    });
                    return false;
                }
                let item = {
                    uloginid:'',
                    upassword:'',
                };
                item.uloginid = this.account.uloginid;
                item.upassword = this.$md5(this.$md5(this.account.upassword));
                if ((item.uloginid != "" || item.uloginid != null) && (item.upassword != "" || item.upassword != null)){
                    this.$refs.loginForm.validate(async valid => {
                        if(valid){
                            // 发送ajax请求
                            if (JSON.parse(sessionStorage.user) != null){
                                var ulogin = JSON.parse(sessionStorage.user).uloginid;
                                if (ulogin == this.account.uloginid){
                                    this.$notify({
                                        message: '你已经登录过此账号',
                                        type: 'info',
                                    });
                                    return true;
                                } else {
                                    this.login();
                                }
                            }
                            const result =await this.$axios.post("user/login", item);
                            if (result.data.status == 200){
                                this.$notify({
                                    message: '登录成功',
                                    type: 'success'
                                });
                                sessionStorage.user = JSON.stringify(result.data.user);
                                // this.$cookie.set("user", JSON.stringify(result.data.user));
                                this.toCheck = false;
                                this.$router.push("/block");
                                setTimeout(() => {
                                    this.$router.push(sessionStorage.jump);
                                    this.chenckForUserCheckIn();
                                }, 5);
                            } else {
                                if (result.data.status == 400){
                                    this.$notify({
                                        message: '账号或密码错误',
                                        type: 'error',
                                    });
                                    return false;
                                } else if (result.data.status == 404){
                                    this.$notify({
                                        message: '没有此账号',
                                        type: 'error',
                                    });
                                    return false;
                                }
                            }
                        } else {
                            this.$notify({
                                    message: '账号或密码错误',
                                    type: 'error',
                                });
                            return false;
                        }
                    });
                }
            },
            resetForm(){
                this.$refs.loginForm.resetFields();
            },
            check(){
                this.toCheck = true;
            },
            async quit(){
                // 清空sessionStorage和cookie里的缓存
                if (sessionStorage.user == undefined){
                    this.$router.push("/login");
                    return true;
                }
                this.outlineaccount.uloginid=JSON.parse(sessionStorage.user).uloginid;
                this.outlineaccount.upassword=JSON.parse(sessionStorage.user).upassword;
                this.$axios.post("/user/outline", this.outlineaccount);
                sessionStorage.clear();
                // this.$cookie.remove("user");
                // this.$cookie.remove("searchkey");
                // this.$cookie.remove("id");
                // this.$cookie.remove("adid");
                // this.$cookie.remove("jump");
                // this.$cookie.remove("otheruserid");
                // this.$cookie.remove("fromsearch");
                // this.$cookie.remove("amatchid");
                this.$router.push('/login');
            },
            openAndclose(){
                this.isCollapse = !this.isCollapse;
            },
            changeBigStatus(){
                this.isShow = !this.isShow;
            },
            isGuestLogin(){
                var userInfo = JSON.parse(sessionStorage.user);
                if (userInfo == null || userInfo == undefined){
                    this.isGuest = true;
                } else {
                    this.currentUser=userInfo;
                }
            },
            searchForContent(){
                sessionStorage.removeItem("searchkey");
                sessionStorage.searchkey = this.search;
                // this.$cookie.set("searchkey", this.search);
                if (this.search === '' || this.search == null){
                    this.$notify({
                        message:'请输入搜索内容',
                        type:'error',
                    });
                    return false;
                }
                this.$router.push("/block");
                setTimeout(() => {
                    this.$router.push("/searchcontent");
                }, 5);
            },
            // 检查用户是否登录
            chenckForUserCheckIn(){
                let userInfo = JSON.parse(sessionStorage.user);
                if (userInfo === '' || userInfo == null){
                    setTimeout(() => {
                        this.userCheckIn = true;
                    }, 2000);
                    return false;
                } else {
                    if (userInfo.uemail !== '' && userInfo.uemail != null){
                        const result = this.$axios.get("pushbyemail/isbind?userid=" + JSON.parse(sessionStorage.user).userid);
                        result.then((response) => {
                            if (response.data.status == 200){
                                if (response.data.isbind == 1){
                                    this.sendByEmail = true;
                                }
                            }
                        });
                    }
                }
            },
            goToLogin(){
                this.toCheck = true;
                this.userCheckIn = false;
            },
            sureToSendByEmail(){
                this.sendByEmail = false;
                let item = {
                    userid: JSON.parse(sessionStorage.user).userid,
                    uemail: JSON.parse(sessionStorage.user).uemail,
                };
                const result = this.$axios.post("pushbyemail/addpush", item);
                result.then((response) => {
                    if (response.data.status == 200){
                        this.$notify({
                            message: '绑定成功',
                            type: 'success'
                        });
                    } else {
                        this.$notify.error({
                            message: '绑定失败',
                            type: 'error',
                        });
                    }
                });
            },
            checkCookie(){
                let isOpenCookie = window.navigator.cookieEnabled;
                if (!isOpenCookie){
                    this.closeCoo = true;
                }
            },
        },
        beforeDestroy(){
            sessionStorage.removeItem("user");
        },
        watch: {
            windowWidth (val) {
                let that = this;
                if (val < 1800){
                    this.showTotal=false;
                } else {
                    this.showTotal=true;
                }
            }
        },
        created(){
            this.checkCookie();
            this.chenckForUserCheckIn();
            this.isGuestLogin();
        },
        mounted() {
            var that = this;
            // <!--把window.onresize事件挂在到mounted函数上-->
            window.onresize = () => {
                return (() => {
                    window.fullHeight = document.documentElement.clientHeight;
                    window.fullWidth = document.documentElement.clientWidth;
                    that.windowHeight = window.fullHeight;  // 高
                    that.windowWidth = window.fullWidth; // 宽
                })()
            };
        },
    }
</script>

<style scoped>
    .el-main{
        width: 100%;
        height: 100%;
        margin: 0px;
        padding: 0px;
    }
    .el-container{
        width: 100%;
        height: 100%;
    }
    .el-header{
        background-color: #303133;
        /* 让组件在容器的两端出现 */
        display: flex;
        justify-content: space-between;
        align-items: center;
        color: #ffffff;
        font-size: 14px;
        font-weight: bold;
        letter-spacing: 1px;
        font-family: 雅黑;
    }
    .el-aside{
        background-color:  #303133;
    }
    .closemenustyle{
        width:100%;
        background-color: #ffd04b;
        color: #ffffff;
        line-height: 24px;
        text-align: center;
        letter-spacing: 1px;
        font-size: 14px;
        cursor: pointer;
    }
    .footer{
        background-color: #303133;
        color: white;
        width: 100%;
        height: 100%;
        padding-top: 8px;
        display: flex;
        justify-content: space-between;
    }
    .link{
        color: white;
        text-align: right;
    }
    .out-div{
        width: 100%;
        height: 100%;
        background-color:white;
        padding: 15px;
    }
</style>