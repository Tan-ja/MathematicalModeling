<template>
    <div class="total-body">
        <el-card class="box-card">
            <div style="width:1500px;heigth:100%;margin: 0 auto">
                <div style="text-align:center;width:1500px">
                    <h1><font size="7px" color="gray">GLUTSM 名人堂</font></h1>
                    <p>
                        <font size="5px">
                            你因数模而成长，数模因你而不同
                        </font>
                    </p>
                </div>
                <div style="width:1500px;heigth:100%;margin: 0 auto">
                    <div v-for="item in famousInfo" :key="item.ufid" @click="changein(item.uid)">
                        <el-card :body-style="{ padding: '0px' }" class="famous">
                            <el-link :underline="false">
                                <img :src="item.ufaceaddress" class="image">
                            </el-link>
                                <div class="second-info">
                                    <h3 class="title-info">{{item.uname}}</h3>
                                    <div class="inner-con">
                                        <font size="1px">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{{item.ufcontent}}
                                        </font>
                                    </div>
                                </div>
                        </el-card>
                    </div>
                </div>
            </div>
        </el-card>
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                famousInfo:[],
            }
        },
        created(){
            this.getfamous();
        },
        methods:{
            async getfamous(){
                const result = await this.$axios.get("user/famous");
                if (result.data.status == 200){
                    var allFamous = result.data.famous;
                    for (var i = 0;i < allFamous.length;i++){
                        var item = {};
                        item["ufid"] = allFamous[i].ufid;
                        item["uid"] = allFamous[i].uid;
                        item["uname"] = allFamous[i].uname;
                        item["ufcontent"] = allFamous[i].ufcontent;
                        item["ufaceaddress"] = this.$picURL + allFamous[i].ufaceaddress;
                        this.famousInfo.push(item);
                    }
                }
            },
            changein(itemid){
                sessionStorage.id = "s:" + itemid + ";f";
                // this.$cookie.set("id", "s:" + itemid + ";f");
                this.$router.push("/teacherOrStudentDesc");
            }
        },
    }
</script>

<style scoped>
.total-body{
    width: 100%;
    height: 100%;
    font: normal 16px sans-serif;
}
.famous{
    margin-left: 175px;
    width: 270px;
    height: 375px;
    float: left;
    margin-top: 40px;
}
.image{
    width: 100%;
    height: 200px;
}
.inner-con{
    margin-top: 0px;
}
.title-info{
    margin-top: 5px;
    text-align: center;
}
.second-info{
    padding: 14px;
}
.text {
    font-size: 14px;
  }

  .item {
    padding: 18px 0;
  }

  .box-card {
    background-image: linear-gradient(to top, #e6e9f0 0%, #eef1f5 100%);
    width: 100%;
  }
</style>