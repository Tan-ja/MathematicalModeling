<template>
    <div class="outside-div">
        <div style="width:1500px;heigth:100%;margin: 0 auto" v-show="!isDesc">
            <div>
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>学术动态</el-breadcrumb-item>
                    <el-breadcrumb-item>学术资讯</el-breadcrumb-item>
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
                                        <i class="el-icon-reading" title="类型"></i>&nbsp;{{item.acategory}}&nbsp;&nbsp;&nbsp;&nbsp;
                                        <i class="el-icon-time" title="发表时间"></i>&nbsp;{{item.adate}}&nbsp;&nbsp;&nbsp;&nbsp;
                                        <i class="el-icon-star-off" title="点赞数"></i>&nbsp;{{item.aconsider}}&nbsp;&nbsp;&nbsp;&nbsp;
                                        <i class="el-icon-chat-round" title="评论数"></i>&nbsp;{{item.acomment}}&nbsp;&nbsp;&nbsp;&nbsp;
                                        <i class="el-icon-s-custom" title="阅读数"></i>&nbsp;{{item.areaders}}
                                    </div>
                                </div>
                                <div class="contentMi">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{item.acontent}}
                                </div>
                            </div>
                        </div>
                    </el-card>
                </div>
                <div class="div-page">
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
            <!-- <div class="div-other" v-show="show">
                <el-card shadow="hover" class="otherone">
                    <div>热文推荐</div>
                    <el-divider></el-divider>
                </el-card>
                <el-card shadow="hover" class="otherone">
                    <div>精彩评论</div>
                    <el-divider></el-divider>
                </el-card>
            </div> -->
        </div>
        <div style="width:1500px;heigth:100%;margin: 0 auto" v-show="isDesc">
            <academicOptionDesc
            ref="academic"
            >
            </academicOptionDesc>
        </div>
    </div>
</template>

<script>
    import optionDesc from './OptionDesc.vue';
    export default {
        name: '',
        components:{
            academicOptionDesc: optionDesc,
        },
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
                isDesc: false,
            }
        },
        created(){
            // if (sessionStorage.currentPage0 != undefined && sessionStorage.currentPage0 !== ""){
            //     this.currentPage =  parseInt(sessionStorage.currentPage0);
            // }
            // if (sessionStorage.pageSize0 != undefined && sessionStorage.pageSize0 !== ""){
            //     this.pageSize = parseInt(sessionStorage.pageSize0);
            // }
            this.getDataForAcade();
        },
        methods:{
            getDataForAcade(){
                // if (sessionStorage.currentPage0 == undefined && sessionStorage.pageSize0 == undefined){
                    const result = this.$axios.get("/academic/all?acategory=学术资讯&currentPage="+this.currentPage+"&pageSize="+this.pageSize);
                    result.then((response) => {
                        if (response.data.status == 200){
                            this.academicInfo = [];
                            for (let i = 0;i < response.data.academics.list.length;i++){
                                let item = response.data.academics.list[i];
                                item.afaceaddress = this.$picURL + item.afaceaddress;
                                this.academicInfo.push(item);
                            }
                            this.infoLength=response.data.academics.total;
                            this.isContent = true;
                            this.isNotContent = false;
                        } else {
                            this.isContent = false;
                            this.isNotContent = true;
                        }
                    });
                // } else {
                //     const result = this.$axios.get("/academic/all?acategory=协会荣誉&currentPage="+sessionStorage.currentPage0+"&pageSize="+sessionStorage.pageSize0);
                //     result.then((response) => {
                //         if (response.data.status == 200){
                //             this.academicInfo = [];
                //             for (let i = 0;i < response.data.academics.list.length;i++){
                //                 let item = response.data.academics.list[i];
                //                 item.afaceaddress = this.$picURL + item.afaceaddress;
                //                 this.academicInfo.push(item);
                //             }
                //             this.infoLength=response.data.academics.total;
                //             this.isContent = true;
                //             this.isNotContent = false;
                //         } else {
                //             this.isContent = false;
                //             this.isNotContent = true;
                //         }
                //     });
                // }
            },
            change(){
                alert("ok");
            },
            handleSizeChange(val) {
                this.pageSize = val;
                // sessionStorage.pageSize0 = val + "";
                this.getDataForAcade();
            },
            handleCurrentChange(val) {
                this.currentPage = val;
                // sessionStorage.currentPage0 = val + "";
                this.getDataForAcade();
            },
            toDesc(adid){
                sessionStorage.id = "学术资讯:" + adid;
                // this.$cookie.set("id", "协会荣誉:" + adid);
                // this.$router.push("/optionDesc");
                this.$refs.academic.init();
                this.isDesc = true;
            },
            goBack(){
                this.isDesc = false;
            },
        },
        watch: {
            windowHeight (val) {
                let that = this;
                // console.log("实时屏幕高度：",val, that.windowHeight );
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
        height:870px;
        background-color:white;
        padding: 15px;
    }
.introduction-one{
    font-size: bold;
    color: #409EFF;
    width: 100%;
    height: 100%;
    margin-top: 20px;
}

.div-other{
    margin-left: 10px;
    width: 300px;
    float: left;
    margin-top: 20px;
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
</style>