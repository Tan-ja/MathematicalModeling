<template>
    <div class="outside-div">
        <div class="search">
            <div style="padding-top:60px">
                <font size="6px">搜索“<font style="color: #49d2e2">{{searchContent}}</font>”的结果</font>
            </div>
        </div>
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div style="margin-top:20px;margin-left:15px">
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>文章搜索-{{searchContent}}</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <el-divider></el-divider>
            <div class="div-out">
                <div v-show="isContent" v-for="item in academicInfo" :key="item.adid" class="introduction-one">
                    <el-card :body-style="{ padding: '8px',height: '173px'}">
                        <div class="second-out">
                            <el-link :underline="false" @click="toDesc(item.adid)"><img :src="item.afaceaddress" class="image"></el-link>
                            <div class="title-info">
                                <div>
                                    <el-link :underline="false" @click="toDesc(item.adid)"><h2 class="inner-title">{{item.atitle}}</h2></el-link>
                                </div>
                                <div class="change-to">
                                    <div>
                                        <i class="el-icon-reading"></i>&nbsp;{{item.acategory}}&nbsp;&nbsp;&nbsp;&nbsp;
                                        <i class="el-icon-time"></i>&nbsp;{{item.adate}}&nbsp;&nbsp;&nbsp;&nbsp;
                                        <i class="el-icon-star-off"></i>&nbsp;{{item.aconsider}}&nbsp;&nbsp;&nbsp;&nbsp;
                                        <i class="el-icon-chat-round"></i>&nbsp;{{item.acomment}}&nbsp;&nbsp;&nbsp;&nbsp;
                                        <i class="el-icon-s-custom"></i>&nbsp;{{item.areaders}}
                                    </div>
                                </div>
                                <div class="contentMi">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{item.acontent}}
                                </div>
                            </div>
                        </div>
                    </el-card>
                </div>
                <div class="div-page" v-show="academicInfo.length != 0">
                    <el-pagination
                    @size-change="handleSizeChange"
                    @current-change="handleCurrentChange"
                    :current-page="currentPage"
                    :page-sizes="[5,10,15,20]"
                    :page-size="pageSize"
                    layout="total, sizes, prev, pager, next, jumper"
                    :total="infoLength">
                    </el-pagination>
                </div>
                <div class="intro" v-show="isNotContent">
                    <el-card shadow="hover">
                        <font color = "#409EFF" size="5px">暂无信息</font>
                    </el-card>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                academicInfo:[],
                isContent:true,
                isNotContent:false,
                show:true,
                infoLength:0,
                pageSize:5,
                currentPage:1,
                windowWidth: document.documentElement.clientWidth,  //实时屏幕宽度
                windowHeight: document.documentElement.clientHeight,   //实时屏幕高度
                searchContent:'' // 用户搜索的内容
            }
        },
        created(){
            this.getData();
        },
        methods:{
            async getData(){
                let searchCon = sessionStorage.searchkey;
                this.searchContent=searchCon;
                const result = await this.$axios.get("/academic/allbykey?key=" + searchCon + "&currentPage="+this.currentPage+"&pageSize="+this.pageSize);
                if (result.data.status == 200){
                    for (let i = 0;i < result.data.academics.list.length;i++){
                        let item = result.data.academics.list[i];
                        item.afaceaddress = this.$picURL + item.afaceaddress;
                        this.academicInfo.push(item);
                    }
                    this.infoLength=result.data.academics.total;
                    this.isContent = true;
                    this.isNotContent = false;
                } else {
                    this.isContent = false;
                    this.isNotContent = true;
                }
            },
            change(){
                alert("ok");
            },
            handleSizeChange(val) {
                this.pageSize = val;
                this.getData();
            },
            handleCurrentChange(val) {
                this.currentPage = val;
                this.getData();
            },
            toDesc(adid){
                sessionStorage.fromsearch = "fromsearch";
                sessionStorage.id = "协会荣誉:" + adid;
                // this.$cookie.set("fromsearch", "fromsearch");
                // this.$cookie.set("id", "协会荣誉:" + adid);
                this.$router.push("/optionDesc");
            },
        },
        watch: {
            windowHeight (val) {
                let that = this;
            },
            windowWidth (val) {
                let that = this;
                if (val < 1944){
                    this.show=false;
                } else {
                    this.show=true;
                }
            }
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
    .outside-div{
        /* display: flex;
        justify-content: space-between; */
        width:100%;
        height:100%;
    }
.introduction-one{
    font-size: bold;
    color: #409EFF;
    width: 100%;
    height: 100%;
    margin-bottom: 20px;
}

.div-other{
    margin-left: 10px;
    width: 300px;
    float: left;
    /* margin-top: 20px; */
}
.otherone{
    margin: 0px auto 10px 10px;
    height: 80px;
}
.image{
    height: 173px;
}
.intro{
    text-align: center;
    margin-top: 30px;
}
.div-out{
    font-size: bold;
    /* margin-top: 20px; */
    float: left;
    width: 1500px;
}
.title-info{
    padding: 0px;
    height: 150px;
    width: 75%;
    margin: 0px auto;
}
.inner-title{
    margin-top: 0px;
    color: #409EFF;
}
.second-out{
    display: flex;
    justify-content: space-between;
}
.contentMi{
    margin-top: 10px;
    height: 90px;
    padding-top: 11px;
}
.change-to{
    display: flex;
    justify-content: space-between;
}
.image{
    width: 240px;
    height: 175px;
}
.div-page{
    text-align: center;
    margin-top: 30px;
}
.search{
    width:100%;
    height:130px;
    text-align:center;
    background-image: url('../../static/searchbackground1.jpg');
    background-size: 100% 100%;
}
</style>