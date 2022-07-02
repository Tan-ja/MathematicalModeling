<template>
    <div style="width:100%;height:100%;background-color:white;padding: 15px">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div>
                <div>
                    <el-page-header @back="goBack" content="详情页面">
                    </el-page-header>
                </div>
            </div>
            <div class="introduction">
                <el-col :span="28">
                    <el-card shadow="hover">
                        <div>
                            <div class="intro"><font color = "#409EFF" size="5px">{{bookInfo.bookname}}</font></div>
                            <el-divider></el-divider>
                        </div>
                        <div>
                            <div style="width:300px;height:350px;float:left">
                                <el-image :src="bookInfo.bookaddress" style="width:300px;height: 350px"></el-image>
                            </div>
                            <div style="width:600px;float:left;height:350px">
                                <ul style="list-style-type:none;float:left">
                                    <li><font class="font-name">书名</font></li><br/>
                                    <li><font class="font-name">作者</font></li><br/>
                                    <li><font class="font-name">豆瓣评分</font></li><br/>
                                    <li><font class="font-name">ISBN</font></li><br/>
                                    <li><font class="font-name">豆瓣地址</font></li><br/>
                                </ul>
                                <ul style="list-style-type:none;float:left">
                                    <li><font style="margin-left:20px">{{bookInfo.bookname}}</font></li><br/>
                                    <li><font style="margin-left:20px">{{bookInfo.author}}</font></li><br/>
                                    <li><font style="margin-left:20px;font-weight:bold">{{bookInfo.doubanscore}}</font></li><br/>
                                    <li><font style="margin-left:20px">{{bookInfo.isbn}}</font></li><br/>
                                    <li><font style="margin-left:20px" v-html="bookInfo.doubanaddress"></font></li><br/>
                                </ul>
                            </div>
                        </div>
                        <div v-html="bookInfo.bookdesc" style="width:100%;height:100%;clear:both;padding-top:30px">
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
                bookInfo:{},
            }
        },
        created(){
            this.getBookInfo();
        },
        methods:{
            getBookInfo(){
                var ISBN = sessionStorage.ISBN;
                var result = this.$axios.get("book/bookdesc?ISBN=" + ISBN);
                result.then(response => {
                    if (response.data.status == 200){
                        this.bookInfo = response.data.bookdesc;
                        this.bookInfo.bookaddress = this.$picURL + this.bookInfo.bookaddress;
                    }
                });
            },
            goBack(){
                window.history.back();
                // this.$router.push("/booksRecommended");
            }
        },
    }
</script>

<style scoped>
    .introduction{
        margin:10px auto;
        font-size: bold;
        color: #409EFF;
    }
    .other{
        margin: 0px auto 10px 10px;
        height: 80px;
    }
    .intro{
        text-align: center;
    }
    .otherone{
        margin: 0px auto 10px 10px;
        height: 80px;
    }
    .div-other{
        margin-left: 10px;
        width: 32%;
        float: right;
    }
    .font-name{
        font-weight: bold;
    }
</style>