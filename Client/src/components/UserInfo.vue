<template>
    <div style="width:100%;height:100%;padding: 15px">
        <div style="width:1200px;heigth:100%;margin: 0 auto">
            <div>
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>个人中心</el-breadcrumb-item>
                    <el-breadcrumb-item>个人信息</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <el-divider></el-divider>
            <div style="width:1200px;heigth:100%;margin: 0 auto">
                <div style="margin-top:50px">
                    <el-card class="box-card" style="width:100%">
                    <div slot="header" class="clearfix">
                        <span>个人信息</span>
                        <el-button style="float: right; padding: 3px 0" type="text" @click="centerDialogVisible=true">修改</el-button>
                        </div>
                        <div>
                            <el-form :model="account" :rules="rules" ref="account" label-width="100px" class="demo-ruleForm">
                                <el-form-item label="头像">
                                    <el-avatar :size="150" :fit="fit" :src="circleUrl" shape="square"></el-avatar>
                                </el-form-item>
                                <el-form-item label="昵称">
                                    <el-input v-model="account.usernickname" type="text" readonly  placeholder="昵称"></el-input>
                                </el-form-item>
                                <el-form-item label="性别">
                                    <el-radio-group v-model="account.usersex" :disabled="noUpdate">
                                    <el-radio label="男"></el-radio>
                                    <el-radio label="女"></el-radio>
                                    </el-radio-group>
                                </el-form-item>
                                <el-form-item label="籍贯">
                                    <el-input v-model="account.userfrom" type="text" readonly placeholder="籍贯"></el-input>
                                </el-form-item>
                                <el-form-item label="邮箱">
                                    <el-input v-model="account.uemail" type="text" readonly  placeholder="邮箱"></el-input>
                                </el-form-item>
                                <el-form-item label="个性签名">
                                    <el-input v-model="account.usersignature" type="text" readonly placeholder="个性签名"></el-input>
                                </el-form-item>
                            </el-form>
                            <div style="padding-bottom:20px">
                                <el-button type="primary" size="mini" style="float:right" @click="showMore">更多</el-button>
                            </div>
                        </div>
                    </el-card>
                </div>
                <el-dialog
                title=""
                :visible.sync="centerDialogVisible"
                width="950px"
                center>
                <el-card class="box-card" style="width:900px">
                    <div slot="header" class="clearfix">
                        <el-form :model="account" :label-position="labelPosition" :rules="rules" status-icon ref="account" label-width="100px" class="demo-ruleForm">
                            <el-form-item label="头像">
                                <el-upload
                                class="avatar-uploader"
                                :action="action"
                                :show-file-list="false"
                                :on-success="handleAvatarSuccess"
                                :before-upload="beforeAvatarUpload">
                                <img v-if="imageUrl" :src="imageUrl" class="avatar">
                                <i v-else class="el-icon-plus avatar-uploader-icon"></i>
                                </el-upload>
                            </el-form-item>
                            <el-form-item prop="usernickname" label="昵称">
                                <el-input v-model="account.usernickname" type="text"  placeholder="请输入昵称(4~16个字符)"></el-input>
                            </el-form-item>
                            <el-form-item label="性别">
                                <el-radio-group v-model="account.usersex">
                                <el-radio label="男"></el-radio>
                                <el-radio label="女"></el-radio>
                                </el-radio-group>
                            </el-form-item>
                            <el-form-item label="籍贯">
                                <el-input v-model="account.userfrom" type="text" placeholder="请输入籍贯"></el-input>
                            </el-form-item>
                            <el-form-item prop="uemail" label="邮箱">
                                <el-input v-model="account.uemail" type="text"  placeholder="请输入邮箱(可选项)"></el-input>
                            </el-form-item>
                            <el-form-item label="个性签名">
                                <el-input v-model="account.usersignature" type="text" placeholder="请输入个性签名(可选项)"></el-input>
                            </el-form-item>
                            <el-form-item style="display: flex;justify-content: space-between">
                                <el-button type="success" size="small" @click="submitForm('account')">确认修改</el-button>
                            </el-form-item>
                        </el-form>
                    </div>
                    </el-card>
                </el-dialog>
                <div style="width:100%;height:100%;margin-top:20px" v-show="sureToShowMore">
                <el-tabs type="border-card" v-model="activeName" @tab-click="handleClick">
                    <el-tab-pane label="阅读记录" name="阅读记录">
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
                    <el-tab-pane label="评论记录" name="评论记录">
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
                    <el-tab-pane label="点赞记录" name="点赞记录">
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
                    <el-tab-pane label="参加的竞赛" name="参加的竞赛">
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
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            // 验证邮箱
            var checkEmail = (rule, value, cb) => {
                if (value == "" || value == null){
                    return cb();
                }
                const reg =/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/;
                if (reg.test(value)){
                    return cb();
                } else {
                    cb(new Error("请输入合法的邮箱"));
                }
            };      
            return {
                labelPosition: "top",
                noUpdate:true,
                account:{
                    usersex:"",
                    usernickname:"",
                    userfaceaddress:"",
                    userfrom:"",
                    uemail:"",
                    usersignature:"",
                    uloginid:"",
                    upassword:"",
                },
                centerDialogVisible: false,
                localImg:"",
                rules:{
                    usernickname: [ // 昵称验证规则
                        { required: true, message: '请输入昵称', trigger: 'blur' },
                        { min: 4, max: 16, message: '长度在 4 到 16 个字符', trigger: 'blur' },
                    ],
                    uemail:[
                        { validator: checkEmail, trigger: 'blur'},
                    ],
                },
                action:'',
                canRegistry:false,
                imageUrl: '',
                response:'',
                size:'large',
                circleUrl:'',
                fit:'fill',
                drag:true,
                oldFaceAddress: '',
                sureToShowMore: false,
                activeName: '阅读记录',
                src: 'https://cube.elemecdn.com/6/94/4d3ea53c084bad6931a56d5158a48jpeg.jpeg',
                reader:[],
                takeCom:[],
                approve:[],
            }      
        },
        methods:{
            submitForm(formName) {
                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        this.sureToUpdate();
                    } else {
                        return false;
                    }
                });
            },
            async sureToUpdate(){
                const result = this.$axios.post("user/updateuserinfo", this.account);
                result.then(response => {
                    if (response.data.status == 200){
                    this.$notify({
                        message:response.data.statusText,
                        type:'success',
                    });
                    this.centerDialogVisible=false;
                    this.account=response.data.newuser;
                    this.action=this.$baseURL + 'upload/postfile';
                    this.imageUrl=this.$picURL + this.account.userfaceaddress;
                    this.circleUrl=this.$picURL + this.account.userfaceaddress;
                    sessionStorage.user = JSON.stringify(this.account);
                    // this.$cookie.set("user", JSON.stringify(this.account));
                } else {
                    this.$notify({
                        message:response.data.statusText,
                        type:'error',
                    });
                }
                });
            },
            resetForm(formName) {
                this.$refs[formName].resetFields();
            },
            back(){
                this.$router.push("/login");
            },
            checkRepeat(){
                const result = this.$axios.get("user/checkrepeat?uloginid=" + this.account.uloginid);
                result.then(response => {
                    if (response.data.status == 200){
                        this.canRegistry = true;
                    } else if (response.data.status == 201){
                        this.canRegistry = false;
                        this.$notify.error("用户名已经存在");
                    }
                });
            },
            beforeAvatarUpload(file) {
                const isJPG = file.type === 'image/jpg';
                const isJPEG = file.type === 'image/jpeg';
                const isPNG = file.type === 'image/png';
                const isLt2M = file.size / 1024 / 1024 < 10;

                if (!isJPG && !isJPEG && !isPNG) {
                    this.$notify({
                        message:'上传头像图片只能是 JPG或JPEG或PNG 格式!',
                        type:'error',
                    });
                }
                if (!isLt2M) {
                    this.$notify({
                        message:'上传头像图片大小不能超过 10MB!',
                        type:'error',
                    });
                }
                return (isJPG || isJPEG || isPNG) && isLt2M;
            },
            handleAvatarSuccess(response, file) {
                this.imageUrl = URL.createObjectURL(file.raw);
                this.oldFaceAddress = this.account.userfaceaddress;
                this.account.userfaceaddress=response;
                this.imageUrl=this.$picURL + this.account.userfaceaddress;
                this.circleUrl=this.$picURL + this.account.userfaceaddress;
                sessionStorage.user = JSON.stringify(this.account);
                // this.$cookie.set("user", this.account);
                // 用户修改头像后，需要删除原本的头像
                this.$axios.get("upload/deleteuploadfile?category=用户头像&filepath=" + this.oldFaceAddress);
            },
            showMore(){
                this.sureToShowMore = !this.sureToShowMore;
                if (this.sureToShowMore){
                    this.getAllUserOperation();
                }
            },
            handleClick(tab, event) {
            },
            // 根据用户id获取当前用户所有的操作记录
            getAllUserOperation(){
                let currentUserId = JSON.parse(sessionStorage.user).userid;
                const result = this.$axios.get("user/getuserinfo?userid=" + currentUserId);
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
        },
        created(){
            let userInfo = JSON.parse(sessionStorage.user);
            if (userInfo == '' || userInfo == null){
                this.$notify({
                    message:'请先登录',
                    type:'info',
                });
                this.$router.push("/background");
            } else {
                this.account = userInfo;
                this.action=this.$baseURL + 'upload/postfile';
                if (this.account.userfaceaddress !== ''){
                    this.oldFaceAddress = this.account.userfaceaddress;
                    this.imageUrl=this.$picURL + this.account.userfaceaddress;
                    this.circleUrl=this.$picURL + this.account.userfaceaddress;
                }
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
    width: 1200px;
  }

  .login-container{
        width: 450px;
        margin: auto;
        height: 100%;
    }
    .login-header{
        background-color: #409EFF;
        padding: 10px;
        color: #ffffff;
        font-weight: bold;
        letter-spacing: 1px;
    }
    .login-body{
        margin: auto;
    }
    .top-div{
        width: 160px;
        height: 160px;
        margin-left: 190px;
        margin-bottom: 35px;
    }
    .avatar-uploader .el-upload {
    border: 1px dashed #d9d9d9;
    border-radius: 6px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
  }
  .avatar {
    width: 178px;
    height: 178px;
    display: block;
  }
  .avatar-uploader-icon {
    font-size: 28px;
    color: #8c939d;
    width: 178px;
    height: 178px;
    line-height: 178px;
    text-align: center;
  }
</style>