<template>
    <div style="width:100%;height:100%;padding:15px">
        <div style="width:1000px;heigth:100%;margin: 0 auto">
            <div>
                <el-page-header @back="goBack" content="详情页面">
                </el-page-header>
            </div>
            <el-card class="box-card">
                <div>
                    <font size="6px">{{userinfo.usernickname}}</font>
                </div>
                <div style="margin-top:10px">
                    <span><i class="el-icon-time"></i><font>{{userinfo.createtime}} 加入</font><i class="el-icon-location"><font>来自 {{userinfo.userfrom}}</font></i></span>
                </div>
                <div style="margin-top:10px">
                    <div v-show="userinfo.usersignature != ''">
                        <span><font>{{userinfo.usersignature}}</font></span>
                    </div>
                    <div v-show="userinfo.usersignature == ''">
                        <span><font>(也就是刷下存在感)</font></span>
                    </div>
                </div>
            </el-card>
            <div style="width:100%;height:100%;margin-top:20px">
                <el-tabs type="border-card" v-model="activeName" @tab-click="handleClick">
                    <el-tab-pane label="TA的喜欢" name="TA的喜欢">
                        <div class="inner-option" v-show="reader.length != 0">
                            <el-card style="width:100%;height:100%;margin-top:20px" v-for="item in reader" :key="item.id">
                                <div v-show="item.entity.uid">
                                    <div>
                                        <el-divider content-position="left">{{item.odate}}</el-divider>
                                    </div>
                                    <div>
                                        <div style="width:260px;height:200px;float:left">
                                            <el-link type="primary" :underline="false"><el-image :src="item.entity.ufaceaddress" style="width:230px;height:180px"></el-image></el-link>
                                        </div>
                                        <div style="width:500px;height:100%;float:left">
                                            <div>
                                                <el-link type="primary" :underline="false"><font size="5px">{{item.entity.uprofession}}--{{item.entity.uname}}</font></el-link>
                                            </div>
                                            <div style="margin-top:5px">
                                                <i class="el-icon-view">{{item.entity.ureaders}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-star-off">{{item.entity.uthumbup}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-chat-dot-round">{{item.entity.ucomment}}</i>
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                {{item.entity.uintroduction}}
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                <el-button size="mini">中国数学会</el-button>
                                                <el-button size="mini">会议</el-button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div v-show="item.entity.sid">
                                    <div>
                                        <el-divider content-position="left">{{item.odate}}</el-divider>
                                    </div>
                                    <div>
                                        <div style="width:30%;height:100%;float:left">
                                            <el-link type="primary" :underline="false"><el-image :src="item.entity.sfaceaddress" style="width:230px;height:180px"></el-image></el-link>
                                        </div>
                                        <div style="width:60%;height:100%;float:left">
                                            <div>
                                                <el-link type="primary" :underline="false"><font size="5px">{{item.entity.sposition}}--{{item.entity.sname}}</font></el-link>
                                            </div>
                                            <div style="margin-top:5px">
                                                <i class="el-icon-view">{{item.entity.sreaders}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-star-off">{{item.entity.sthumbup}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-chat-dot-round">{{item.entity.scomment}}</i>
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                {{item.entity.sgrade}}
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                <el-button size="mini">中国数学会</el-button>
                                                <el-button size="mini">会议</el-button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div  v-show="item.entity.adid">
                                    <div>
                                        <el-divider content-position="left">{{item.odate}}</el-divider>
                                    </div>
                                    <div>
                                        <div style="width:30%;height:100%;float:left">
                                            <el-link type="primary" :underline="false"><el-image :src="item.entity.afaceaddress" style="width:230px;height:180px"></el-image></el-link>
                                        </div>
                                        <div style="width:60%;height:100%;float:left">
                                            <div>
                                                <el-link type="primary" :underline="false"><font size="5px">{{item.entity.atitle}}</font></el-link>
                                            </div>
                                            <div style="margin-top:5px">
                                                <i class="el-icon-view">{{item.entity.areaders}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-star-off">{{item.entity.aconsider}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-chat-dot-round">{{item.entity.acomment}}</i>
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                {{item.entity.acontent}}
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                <el-button size="mini">中国数学会</el-button>
                                                <el-button size="mini">会议</el-button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </el-card>
                        </div>
                        <div v-show="reader.length == 0">
                            <el-card shadow="hover">
                                <div class="intro"><font color = "#409EFF" size="5px">暂无信息</font></div>
                            </el-card>
                        </div>
                    </el-tab-pane>
                    <el-tab-pane label="评论" name="评论">
                        <div class="inner-option" v-show="takeCom.length != 0">
                            <el-card style="width:100%;height:100%;margin-top:20px" v-for="item in takeCom" :key="item.id">
                                <div v-show="item.entity.uid">
                                    <div>
                                        <el-divider content-position="left">{{item.odate}}</el-divider>
                                    </div>
                                    <div>
                                        <div style="width:260px;height:200px;float:left">
                                            <el-link type="primary" :underline="false"><el-image :src="item.entity.ufaceaddress" style="width:230px;height:180px"></el-image></el-link>
                                        </div>
                                        <div style="width:500px;height:100%;float:left">
                                            <div>
                                                <el-link type="primary" :underline="false"><font size="5px">{{item.entity.uprofession}}--{{item.entity.uname}}</font></el-link>
                                            </div>
                                            <div style="margin-top:5px">
                                                <i class="el-icon-view">{{item.entity.ureaders}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-star-off">{{item.entity.uthumbup}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-chat-dot-round">{{item.entity.ucomment}}</i>
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                {{item.entity.uintroduction}}
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                <el-button size="mini">中国数学会</el-button>
                                                <el-button size="mini">会议</el-button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div v-show="item.entity.sid">
                                    <div>
                                        <el-divider content-position="left">{{item.odate}}</el-divider>
                                    </div>
                                    <div>
                                        <div style="width:30%;height:100%;float:left">
                                            <el-link type="primary" :underline="false"><el-image :src="item.entity.sfaceaddress" style="width:230px;height:180px"></el-image></el-link>
                                        </div>
                                        <div style="width:60%;height:100%;float:left">
                                            <div>
                                                <el-link type="primary" :underline="false"><font size="5px">{{item.entity.sposition}}--{{item.entity.sname}}</font></el-link>
                                            </div>
                                            <div style="margin-top:5px">
                                                <i class="el-icon-view">{{item.entity.sreaders}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-star-off">{{item.entity.sthumbup}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-chat-dot-round">{{item.entity.scomment}}</i>
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                {{item.entity.sgrade}}
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                <el-button size="mini">中国数学会</el-button>
                                                <el-button size="mini">会议</el-button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div  v-show="item.entity.adid">
                                    <div>
                                        <el-divider content-position="left">{{item.odate}}</el-divider>
                                    </div>
                                    <div>
                                        <div style="width:30%;height:100%;float:left">
                                            <el-link type="primary" :underline="false"><el-image :src="item.entity.afaceaddress" style="width:230px;height:180px"></el-image></el-link>
                                        </div>
                                        <div style="width:60%;height:100%;float:left">
                                            <div>
                                                <el-link type="primary" :underline="false"><font size="5px">{{item.entity.atitle}}</font></el-link>
                                            </div>
                                            <div style="margin-top:5px">
                                                <i class="el-icon-view">{{item.entity.areaders}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-star-off">{{item.entity.aconsider}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-chat-dot-round">{{item.entity.acomment}}</i>
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                {{item.entity.acontent}}
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                <el-button size="mini">中国数学会</el-button>
                                                <el-button size="mini">会议</el-button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </el-card>
                        </div>
                        <div class="inner-option" v-show="takeCom.length == 0">
                            <el-card shadow="hover">
                                <div class="intro"><font color = "#409EFF" size="5px">暂无信息</font></div>
                            </el-card>
                        </div>
                    </el-tab-pane>
                    <el-tab-pane label="点赞" name="点赞">
                        <div class="inner-option" v-show="approve.length != 0">
                            <el-card style="width:100%;height:100%;margin-top:20px" v-for="item in approve" :key="item.id">
                                <div v-show="item.entity.uid">
                                    <div>
                                        <el-divider content-position="left">{{item.odate}}</el-divider>
                                    </div>
                                    <div>
                                        <div style="width:260px;height:200px;float:left">
                                            <el-link type="primary" :underline="false"><el-image :src="item.entity.ufaceaddress" style="width:230px;height:180px"></el-image></el-link>
                                        </div>
                                        <div style="width:500px;height:100%;float:left">
                                            <div>
                                                <el-link type="primary" :underline="false"><font size="5px">{{item.entity.uprofession}}--{{item.entity.uname}}</font></el-link>
                                            </div>
                                            <div style="margin-top:5px">
                                                <i class="el-icon-view">{{item.entity.ureaders}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-star-off">{{item.entity.uthumbup}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-chat-dot-round">{{item.entity.ucomment}}</i>
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                {{item.entity.uintroduction}}
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                <el-button size="mini">中国数学会</el-button>
                                                <el-button size="mini">会议</el-button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div v-show="item.entity.sid">
                                    <div>
                                        <el-divider content-position="left">{{item.odate}}</el-divider>
                                    </div>
                                    <div>
                                        <div style="width:30%;height:100%;float:left">
                                            <el-link type="primary" :underline="false"><el-image :src="item.entity.sfaceaddress" style="width:230px;height:180px"></el-image></el-link>
                                        </div>
                                        <div style="width:60%;height:100%;float:left">
                                            <div>
                                                <el-link type="primary" :underline="false"><font size="5px">{{item.entity.sposition}}--{{item.entity.sname}}</font></el-link>
                                            </div>
                                            <div style="margin-top:5px">
                                                <i class="el-icon-view">{{item.entity.sreaders}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-star-off">{{item.entity.sthumbup}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-chat-dot-round">{{item.entity.scomment}}</i>
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                {{item.entity.sgrade}}
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                <el-button size="mini">中国数学会</el-button>
                                                <el-button size="mini">会议</el-button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div v-show="item.entity.adid">
                                    <div>
                                        <el-divider content-position="left">{{item.odate}}</el-divider>
                                    </div>
                                    <div>
                                        <div style="width:30%;height:100%;float:left">
                                            <el-link type="primary" :underline="false"><el-image :src="item.entity.afaceaddress" style="width:230px;height:180px"></el-image></el-link>
                                        </div>
                                        <div style="width:60%;height:100%;float:left">
                                            <div>
                                                <el-link type="primary" :underline="false"><font size="5px">{{item.entity.atitle}}</font></el-link>
                                            </div>
                                            <div style="margin-top:5px">
                                                <i class="el-icon-view">{{item.entity.areaders}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-star-off">{{item.entity.aconsider}}</i>&nbsp;&nbsp;&nbsp;&nbsp;
                                                <i class="el-icon-chat-dot-round">{{item.entity.acomment}}</i>
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                {{item.entity.acontent}}
                                            </div>
                                            <div style="width:100%;height:100%;margin-top:15px">
                                                <el-button size="mini">中国数学会</el-button>
                                                <el-button size="mini">会议</el-button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </el-card>
                        </div>
                        <div class="inner-option" v-show="approve.length == 0">
                            <el-card shadow="hover">
                                <div class="intro"><font color = "#409EFF" size="5px">暂无信息</font></div>
                            </el-card>
                        </div>
                    </el-tab-pane>
                </el-tabs>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                activeName:'TA的喜欢',
                userinfo:{},
                useroperation:[],
                reader:[],
                takeCom:[],
                approve:[],
                src:'https://cube.elemecdn.com/6/94/4d3ea53c084bad6931a56d5158a48jpeg.jpeg',
            }
        },
        methods:{
            goBack() {
                this.$router.push("/optionDesc");  
            },
            handleClick(tab, event) {
            },
            // 根据用户id获取当前用户所有的操作记录
            getAllUserOperation(){
                let otherUserId = sessionStorage.otheruserid;
                const result = this.$axios.get("user/getuserinfo?userid=" + otherUserId);
                result.then((response) => {
                    this.userinfo=response.data.userinfo;
                    for (let i = 0;i < response.data.takeCom.length;i++){
                        let item = response.data.takeCom[i];
                        if (item.entity.uid !== undefined){
                            item.entity.ufaceaddress = this.$picURL + item.entity.ufaceaddress;
                        }
                        if (item.entity.sid !== undefined){
                            item.entity.sfaceaddress = this.$picURL + item.entity.sfaceaddress;
                        }
                        if (item.entity.adid !== undefined){
                            item.entity.afaceaddress = this.$picURL + item.entity.afaceaddress;
                        }
                        this.takeCom.push(item);
                    }
                    for (let i = 0;i < response.data.reader.length;i++){
                        let item = response.data.reader[i];
                        if (item.entity.uid !== undefined){
                            item.entity.ufaceaddress = this.$picURL + item.entity.ufaceaddress;
                        }
                        if (item.entity.sid !== undefined){
                            item.entity.sfaceaddress = this.$picURL + item.entity.sfaceaddress;
                        }
                        if (item.entity.adid !== undefined){
                            item.entity.afaceaddress = this.$picURL + item.entity.afaceaddress;
                        }
                        this.reader.push(item);
                    }
                    for (let i = 0;i < response.data.approve.length;i++){
                        let item = response.data.approve[i];
                        if (item.entity.uid !== undefined){
                            item.entity.ufaceaddress = this.$picURL + item.entity.ufaceaddress;
                        }
                        if (item.entity.sid !== undefined){
                            item.entity.sfaceaddress = this.$picURL + item.entity.sfaceaddress;
                        }
                        if (item.entity.adid !== undefined){
                            item.entity.afaceaddress = this.$picURL + item.entity.afaceaddress;
                        }
                        this.approve.push(item);
                    }
                });
            },
            // toTeaDesc(item){
            //     this.$cookie.set("id", "t:" + item);
            //     this.$cookie.set("tag", "userselection");
            //     this.$router.push("/teacherOrStudentDesc")
            // },
            // toStuDesc(item){
            //     this.$cookie.set("id", "s:" + item);
            //     this.$cookie.set("tag", "userselection");
            //     this.$router.push("/teacherOrStudentDesc")
            // },
            // toAcademicDesc(item,category){
            //     this.$cookie.set("id", category + ":" + item);
            //     this.$cookie.set("tag", "userselection");
            //     this.$router.push("/optiondesc")
            // },
        },
        created(){
            this.getAllUserOperation();
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
  .box-card{
    width: 100%;
    height: 150px;
    padding-top:20px;
    padding-bottom:10px;
    background-color:gray;
    text-align:center;
  }
  .inner-option{
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
</style>