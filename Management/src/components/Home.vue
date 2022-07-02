<template>
    <el-container class="el-container">
        <el-header class="footer">
            <div>
                <div style="margin-top:10px;float:left">
                    <img style="width:60px;height:60px" :src="titleImage"/>
                </div>
                <div style="width:500px;margin-top:5px;margin-left:0px">
                    <font size="5px">数模人数学建模竞赛网站后台管理系统</font>
                </div>
            </div>
            <!-- <div>
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
                    :key="item.mid" style="width:200px">
                        <template slot="title">
                        <i :class="item.icon"></i>
                        <span>{{item.mtitle}}</span>
                        </template>
                        <el-menu-item :index="subItem.path + ''" v-for="subItem in item.children" :key="subItem.sids">{{subItem.stitle}}</el-menu-item>
                    </el-submenu>
                </el-menu>
            </div> -->
            <div style="margin-left:200px">
                <el-button type="info" size="mini" @click="dialogVisible = true">退出</el-button>
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
            title="提示"
            :visible.sync="backToJust"
            width="30%"
            center>
            <span>是否回到刚才页面?</span>
            <span slot="footer" class="dialog-footer">
                <el-button @click="backToJust = false">取 消</el-button>
                <el-button type="primary" @click="backToPrevious">确 定</el-button>
            </span>
            </el-dialog>
            <el-dialog
            title="用户登录"
            :visible.sync="toCheck"
            width="30%"
            center>
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
            <span slot="footer" class="dialog-footer">
                <el-button @click="toCheck = false">取 消</el-button>
                <el-button type="primary" @click="login">确 定</el-button>
            </span>
            </el-dialog>
        </el-header>
        <el-header class="footer">
            <!-- <div style="margin-top:5px">
                <img src="http://www.glutsm.com/themes/glutsm/images/min-glutsm.png" style="float:left"/>
                <div style="width:200px"><font style="margin-top:0px">桂林理工大学数学建模竞赛网站后台管理系统</font><div><font color="">wwww.glutsm.com</font></div></div>
            </div>
            <div v-show="isGuest">
                您选择的是游客模式
            </div> -->
            <div>
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
                    :key="item.mid" style="width:200px">
                        <template slot="title">
                        <i :class="item.icon"></i>
                        <span>{{item.mtitle}}</span>
                        </template>
                        <el-menu-item :index="subItem.path + ''" v-for="subItem in item.children" :key="subItem.sids">{{subItem.stitle}}</el-menu-item>
                    </el-submenu>
                </el-menu>
            </div>
            <!-- <div style="margin-left:200px">
                <el-button type="info" size="mini" @click="dialogVisible = true">退出</el-button>
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
            title="提示"
            :visible.sync="backToJust"
            width="30%"
            center>
            <span>是否回到刚才页面?</span>
            <span slot="footer" class="dialog-footer">
                <el-button @click="backToJust = false">取 消</el-button>
                <el-button type="primary" @click="backToPrevious">确 定</el-button>
            </span>
            </el-dialog>
            <el-dialog
            title="用户登录"
            :visible.sync="toCheck"
            width="30%"
            center>
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
            <span slot="footer" class="dialog-footer">
                <el-button @click="toCheck = false">取 消</el-button>
                <el-button type="primary" @click="login">确 定</el-button>
            </span>
            </el-dialog> -->
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
                    <router-view/>
                </el-main>
                <!-- <img alt="扫码关注我们" src="http://www.glutsm.com/themes/glutsm/images/glutsm-weixin.jpg" style="width:200px;margin-left:83%;height:200px" v-show="isShow"/> -->
                <!-- <el-footer class="footer">
                    <div style="margin-left:20px">
                        <label>
                            <div style="float:left;margin-top:5px">
                                <img src="http://www.glutsm.com/themes/glutsm/images/min-glutsm.png"/>
                            </div>
                            <div style="margin-left:5px;margin-top:0px;width:750px">
                                我们是桂林理工大学数模人，我们致力于为数模爱好者提供一个开放、学习、共享的数模交流平台！
                            </div>
                        </label>
                    </div>
                    <div style="display: flex;justify-content: space-between;">
                        <div style="margin-right:5px;margin-top:3px">
                            <img alt="扫码关注我们" src="http://www.glutsm.com/themes/glutsm/images/glutsm-weixin.jpg" style="display: block;width:40px;height:40px" @mouseover="changeBigStatus" @mouseout="changeBigStatus">
                        </div>
                        <div>
                            <div>
                                <a href="http://www.glutsm.com/form-friend_link.html" class="link">友情链接</a>
                            </div>
                            <div>
                                <a href="https://beian.miit.gov.cn/#/Integrated/index" class="link">京ICP备17036845号-1</a>
                            </div>
                        </div>
                    </div>
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
                account:{
                    uloginid:"",
                    upassword:"",
                },
                isCollapse:false,
                dialogVisible: false,
                isShow:false,
                toCheck:false,
                backToJust:false,
                isGuest:false,
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
                        mtitle:"优秀成员管理",
                        icon:"el-icon-picture-outline-round",
                        children:[
                            {sid:100101,stitle:"优秀教师管理",path:"/teacherdescinfo"},
                            {sid:100102,stitle:"学生干部管理",path:"/Studentdescinfo"},
                        ],
                    },
                    {
                        mid:1002,
                        mtitle:"网站发展管理",
                        icon:"el-icon-document",
                        children:[
                            {sid:100201,stitle:"发展历程",path:"/history"},
                            {sid:100202,stitle:"协会荣誉",path:"/honor"},
                            {sid:100203,stitle:"竞赛成绩",path:"/result"},
                            {sid:100204,stitle:"宣传视频",path:"/video"},
                        ],
                    },
                    {
                        mid:1003,
                        mtitle:"资源管理",
                        icon:"el-icon-s-promotion",
                        children:[
                            {sid:100301,stitle:"试题论文",path:"/exampapers"},
                            {sid:100302,stitle:"学习资料",path:"/learningmaterials"},
                            {sid:100303,stitle:"书籍推荐",path:"/booksrecommended"},
                            {sid:100304,stitle:"常用软件",path:"/commonlyusedwebsite"},
                            {sid:100305,stitle:"优秀网站",path:"/goodwebsite"},
                        ],
                    },
                    {
                        mid:1004,
                        mtitle:"学术动态管理",
                        icon:"el-icon-s-opportunity",
                        children:[
                            {sid:100401,stitle:"学术资讯",path:"/academicinformation"},
                            {sid:100402,stitle:"竞赛培训",path:"/contesttraining"},
                            {sid:100403,stitle:"社团活动",path:"/clubactivities"},
                        ],
                    },
                    {
                        mid:1005,
                        mtitle:"用户管理",
                        icon:"el-icon-s-opportunity",
                        children:[
                            {sid:100501,stitle:"用户信息",path:"/alluserinfo"},
                            {sid:100501,stitle:"用户问题反馈",path:"/userfeedback"},
                        ],
                    },
                    {
                        mid:1006,
                        mtitle:"竞赛信息管理",
                        icon:"el-icon-s-custom",
                        children:[
                            {sid:100601,stitle:"所有赛事",path:"/allmatch"},
                            {sid:100602,stitle:"用户报名审核",path:"/usermatchauditdesc"},
                        ],
                    },
                    {
                        mid:1007,
                        mtitle:"管理员信息管理",
                        icon:"el-icon-s-custom",
                        children:[
                            {sid:100701,stitle:"添加系统管理员",path:"/registry"},
                        ],
                    },
                ],
                backgroundImgs:[
                    // {mid:"1", src:"http://www.glutsm.com/themes/glutsm/images/bg-01.jpg"},
                    // {mid:"2", src:"http://www.glutsm.com/themes/glutsm/images/bg-03.jpg"},
                    // {mid:"3", src:"http://www.glutsm.com/themes/glutsm/images/bg-04.jpg"},
                ],
            }
        },
        destroyed(){
            clearInterval(this.timer);
        },
        methods: {
            makeTimer(){
                return setTimeout(() => {
                    this.backToJust = true;
                },1000);
            },
            backToPrevious(){
                this.$router.push(sessionStorage.jump);
            },
            login(){
                // 转到主页面
                // 对账号和密码进行验证
                if(this.account.uloginid == "" || this.account.upassword == ""){
                    this.$message.error("请输入账号和密码");
                    return false;
                }
                if ((this.account.uloginid != "" || this.account.uloginid != null) && (this.account.upassword != "" || this.account.upassword != null)){
                    this.$refs.loginForm.validate(async valid => {
                        if(valid){
                            // 发送ajax请求
                            if (JSON.parse(sessionStorage.user) != null){
                                var ulogin = JSON.parse(sessionStorage.user).uloginid;
                                if (ulogin == this.account.uloginid){
                                    this.$message.success("你已经登录过此账号");
                                    return true;
                                } else {
                                    this.login();
                                }
                            }
                            const result =await this.$axios.post("user/login", this.account);
                            if (result.data.status == 200){
                                this.$message({
                                    message: '登录成功',
                                    type: 'success'
                                });
                                sessionStorage.user = JSON.stringify(result.data.user);
                                // this.$cookie.set("user", JSON.stringify(result.data.user));
                                // this.$cookie.config('7d');
                                this.toCheck = false;
                                this.$router.push("/home");
                                this.backToPrevious();
                            } else {
                                if (result.data.status == 400){
                                    this.$message({
                                    message: '账号或密码错误',
                                    type: 'error'
                                    });
                                    return false;
                                } else if (result.data.status == 404){
                                    this.$message({
                                    message: '没有此账号',
                                    type: 'error'
                                    });
                                    return false;
                                }
                            }
                        } else {
                            this.$message({
                                message: '账号或密码错误',
                                type: 'error'
                                });
                            return false;
                        }
                    });
                }
            },
            backToJustIn(){
                this.backToJust = true;
            },
            resetForm(){
                this.$refs.loginForm.resetFields();
            },
            check(){
                this.toCheck = true;
            },
            quit(){
                // 清空sessionStorage和cookie里的缓存
                let outlineaccount = {
                    uloginid: '',
                    upassword: '',
                };
                outlineaccount.uloginid=JSON.parse(sessionStorage.user).uloginid;
                outlineaccount.upassword=JSON.parse(sessionStorage.user).upassword;
                this.$axios.post("user/outline", outlineaccount);
                sessionStorage.clear();
                // this.$cookie.remove("id");
                // this.$cookie.remove("adid");
                // this.$cookie.remove("jump");
                this.dialogVisible = false;
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
                }
            }
        }
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
        background: url('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0385896561c84aa6ac7255b14666c1f.jpg&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1626785813&t=fa8dead73152c56691ca515dd6f711cd');
        background-size: 100% 100%;
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
        /* padding-top: 8px; */
        display: flex;
        justify-content: space-between;
        margin: auto;
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