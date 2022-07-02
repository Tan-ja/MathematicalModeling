<template>
    <div style="width:1500px;background-color:white;padding: 15px;margin: 0 auto">
        <div style="width:1500px;heigth:100%;margin: 0 auto" v-show="!isDesc">
            <div>
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>资源管理</el-breadcrumb-item>
                    <el-breadcrumb-item>优秀网站</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <div class="div-container">
                <div>
                    <div class="div-other">
                        <el-card class="box-card">
                            <el-input placeholder="请输入文章标题关键字" v-model="search" class="input-with-select" style="width:500px">
                                <el-button slot="append" @click="goToSearch" icon="el-icon-search"></el-button>
                            </el-input>
                            <el-button @click="toAddHonor">添加选项</el-button>
                            <el-button @click="setSelection">{{selectTip}}</el-button>
                            <el-button @click="sureToDelete" v-show="deleteShow">确认删除</el-button>
                        </el-card>
                    </div>
                    <div v-show="isContent" v-for="item in academicInfo" :key="item.adid" class="introduction-one">
                        <el-card :body-style="{ padding: '8px',height: '173px'}" class="card-info">
                            <div class="second-out">
                                    <el-link :underline="false" @click="toDesc(item.adid)">
                                        <img :src="item.afaceaddress" class="image">
                                    </el-link>
                                <div class="title-info">
                                    <div>
                                        <el-link :underline="false" @click="toDesc(item.adid)">
                                            <h2 class="inner-title">{{item.atitle}}</h2>
                                        </el-link>
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
                                <div>
                                    <el-checkbox v-model="item.isdelete" v-if="deleteShow">删除</el-checkbox>
                                </div>
                            </div>
                        </el-card>
                    </div>
                    <div class="div-page">
                        <el-pagination
                        @size-change="handleSizeChange"
                        @current-change="handleCurrentChange"
                        :current-page="currentPage"
                        :page-sizes="[3,6,9,12]"
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
                isContent:true, // 如果当前页面有内容
                isNotContent:false, // 如果当前页面没有内容
                infoLength:0, // 数据库中此类数据的总数量
                pageSize:3, // 当前每页数据数量
                currentPage:1, // 当前页码
                // 存放用户进行模糊查询的关键字
                search:'',
                deleteShow: false,
                selectTip: '删除选项',
                isDesc: false,
            }
        },
        created(){
            this.getDataByFuzzyQuery();
        },
        methods:{
            async getDataByFuzzyQuery(){
                const result = await this.$axios.get("/academic/allfuzzyquery?acategory=优秀网站&currentPage="+this.currentPage+"&pageSize="+this.pageSize+"&key="+this.search);
                if (result.data.status == 200){
                    this.academicInfo = [];
                    for (let i = 0;i < result.data.academics.list.length;i++){
                        let item = result.data.academics.list[i];
                        item.afaceaddress = this.$picURL + item.afaceaddress;
                        item["isdelete"] = false;
                        this.academicInfo.push(item);
                    }
                    this.infoLength=result.data.academics.total;
                    this.isContent = true;
                    this.isNotContent = false;
                } else {
                    this.infoLength = 0;
                    this.isContent = false;
                    this.isNotContent = true;
                }
            },
            handleSizeChange(val) {
                this.pageSize = val;
                this.getDataByFuzzyQuery();
            },
            handleCurrentChange(val) {
                this.currentPage = val;
                this.getDataByFuzzyQuery();
            },
            toDesc(adid){
                sessionStorage.id = "优秀网站:" + adid;
                // this.$cookie.set("id", "协会荣誉:" + adid);
                this.$refs.academic.getOtherOptionInfo();
                // this.$router.push("/optionDesc");
                this.isDesc = true;
            },
            goBack(){
                this.isDesc = false;
            },
            goToSearch(){
                if (this.search == '' || this.search == null){
                    this.getDataByFuzzyQuery();
                }
                this.getDataByFuzzyQuery();
            },
            toAddHonor(){
                sessionStorage.addcate = "优秀网站";
                // this.$cookie.set("addcate", "优秀网站");
                this.$router.push("/addhonor");
            },
            async sureToDelete(){
                let str = "";
                let strS = [];
                for (let i = 0;i < this.academicInfo.length;i++){
                    let item = this.academicInfo[i];
                    if (item.isdelete){
                        strS.push(item.adid);
                    }
                }
                if (strS.length > 0){
                    for (let i = 0;i < strS.length;i++){
                        if (i == 0){
                            str = strS[i];
                        } else {
                            str = str + ":" + strS[i];
                        }
                    }
                } else {
                    this.$message({
                        message:'请选择删除的选项',
                        type:'error',
                    });
                    return false;
                }
                const result = await this.$axios.get("/academic/deletebyadid?allAdid=" + str);
                if (result.data.status == 200){
                    this.$message({
                        message:result.data.statusText,
                        type:'success',
                    });
                    this.academicInfo = [];
                    this.getDataByFuzzyQuery();
                } else {
                    this.$message({
                        message:result.data.statusText,
                        type:'error',
                    });
                }
            },
            setSelection(){
                this.deleteShow = !this.deleteShow;
                if (this.deleteShow){
                    for (let i = 0;i < this.academicInfo.length;i++){
                        let item = this.academicInfo[i];
                        item.isdelete = false;
                    }
                    this.selectTip = "取消删除";
                } else {
                    this.selectTip = "删除选项";
                }
            },
        },
    }
</script>

<style scoped>
.introduction-one{
    font-size: bold;
    color: #409EFF;
    height: 178px;
    margin-top: 30px;
}

.div-other{
    width: 1500px;
    margin-top: 30px;
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
.div-container{
    display: flex;
    justify-content: space-between;
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
.text {
    font-size: 14px;
  }

  .item {
    padding: 18px 0;
  }

  .box-card {
    width: 1500px;
  }
</style>