<template>
    <div style="width:100%;height:100%;background-color:white;padding: 15px">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div>
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>资源推荐</el-breadcrumb-item>
                    <el-breadcrumb-item>书籍推荐</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <el-divider></el-divider>
            <div >
                <el-link :underline="false"><img :src="item.bookaddress" v-for="item in booksInfo" :key="item.isbn" class="image-size" @click="savedata(item.isbn)"></el-link>
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
        </div>
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                src: 'https://cube.elemecdn.com/6/94/4d3ea53c084bad6931a56d5158a48jpeg.jpeg',
                booksInfo:[],
                infoLength:0,
                pageSize:5,
                currentPage:1,
            }
        },
        created(){
            if (sessionStorage.currentPage != undefined && sessionStorage.currentPage !== ""){
                this.currentPage =  parseInt(sessionStorage.currentPage);
            }
            this.getdata();
        },
        methods:{
            getdata(){
                if (sessionStorage.currentPage == undefined && sessionStorage.pageSize == undefined){
                    var teaResult = this.$axios.get("book/allbook?currentPage=" + this.currentPage + "&pageSize=" + this.pageSize);
                    teaResult.then((response) => {
                        if (response.data.status == 200){
                            if (response.data.books != null){
                                this.booksInfo = [];
                                for (let i = 0;i < response.data.books.list.length;i++){
                                    let item = response.data.books.list[i];
                                    item.bookaddress = this.$picURL + item.bookaddress;
                                    this.booksInfo.push(item);
                                }
                                this.infoLength = response.data.books.total;
                            }
                        }       
                    });
                } else {
                    var teaResult = this.$axios.get("book/allbook?currentPage=" + sessionStorage.currentPage + "&pageSize=" + sessionStorage.pageSize);
                    teaResult.then((response) => {
                        if (response.data.status == 200){
                            if (response.data.books != null){
                                this.booksInfo = [];
                                for (let i = 0;i < response.data.books.list.length;i++){
                                    let item = response.data.books.list[i];
                                    item.bookaddress = this.$picURL + item.bookaddress;
                                    this.booksInfo.push(item);
                                }
                                this.infoLength = response.data.books.total;
                            }
                        }       
                    });
                }
            },
            savedata(itemuid){
                //将要显示详细信息的数据的id存入cookie中
                sessionStorage.ISBN = JSON.stringify(itemuid);
                // this.$cookie.set("ISBN", JSON.stringify(itemuid));
                this.$router.push("/bookDesc")
            },
            handleSizeChange(val) {
                // this.pageSize = val;
                sessionStorage.pageSize = val + "";
                this.getdata();
            },
            handleCurrentChange(val) {
                this.currentPage = val;
                sessionStorage.currentPage = val + "";
                this.getdata();
            },
        },
    }
</script>

<style scoped>
    .time {
        font-size: 13px;
        color: #999;
    }

    .bottom {
        margin-top: 13px;
        line-height: 12px;
    }

    .button {
        padding: 0;
        float: right;
    }

    .image {
        width: 100%;
        display: block;
        height: 80%;
    }

    .clearfix:before,
    .clearfix:after {
        display: table;
        content: "";
    }

    .clearfix:after {
        clear: both
    }
    .image-size{
        width: 350px;
        height: 230px;
        float: left;
        margin-right: 15px;
        margin-top: 19px;
        position: relative;
    }
    .image-size-sub{
        width: 100%;
        height: 100%;
    }
    .introce{
        position: absolute;
        bottom: 0;
        text-align: center;
        width: 100%;
        height: 28px;
        line-height: 28px;
        z-index: 9;
        transition: all .3s;
        background: rgba(73, 210, 226, 0.7);
        padding-bottom: 4px;
    }
    .con-cla{
        margin-top: 3px;
        color: #eef6f7;
    }
    .teabig{
        position: absolute;
        background-color: #45a4b2;
        bottom: 0px;
        width: 100%;
        height: 100%;
        opacity: 0.9;
        color: white;
    }
    .pic-item .pic-title {
        font-size: larger;
        font-weight: bold;
    }

    .pic-item .pic-desc {
        font-size: 12px;
        margin-top: 15px;
        text-align: justify;
        text-indent: 2em;
    }
    .div-page{
        text-align: center;
        column-span: 16;
        padding-top: 20px;
        height: 30px;
        clear: both;
    }
</style>