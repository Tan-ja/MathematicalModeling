<template>
    <div class="transition-box">
        <div>
            <el-card class="box-card">
                <div style="width:100%;height:25px">
                    <el-link type="primary" style="float:right" :underline="false" @click="toMore">更多</el-link>
                </div>
                <div>
                    <el-table
                    :data="tableData"
                    style="width: 900px"
                    border>
                        <el-table-column
                        label="最新赛事"
                        width="180">
                        <template slot-scope="scope">
                            <i class="el-icon-time"></i>
                            <span style="margin-left: 10px">{{ scope.row.mdate }}</span>
                        </template>
                        </el-table-column>
                        <el-table-column
                        width="500">
                        <template slot-scope="scope">
                            <el-popover trigger="hover" placement="top">
                            <p>时间: {{ scope.row.mdate }}</p>
                            <p>标题: {{ scope.row.mtitle }}</p>
                            <div slot="reference" class="name-wrapper">
                                <span style="margin-left: 10px">{{ scope.row.mtitle }}</span>
                            </div>
                            </el-popover>
                        </template>
                        </el-table-column>
                        <el-table-column>
                        <template slot-scope="scope">
                            <el-button
                            size="mini"
                            @click="handleEdit(scope.$index, scope.row)">查看详情</el-button>
                        </template>
                        </el-table-column>
                    </el-table>
                </div>
            </el-card>
        </div>
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                show: true,
                tableData: [],
                srcs:[
                    'https://fuss10.elemecdn.com/a/3f/3302e58f9a181d2509f3dc0fa68b0jpeg.jpeg',
                    'https://fuss10.elemecdn.com/1/34/19aa98b1fcb2781c4fba33d850549jpeg.jpeg',
                    'https://fuss10.elemecdn.com/0/6f/e35ff375812e6b0020b6b4e8f9583jpeg.jpeg',
                    'https://fuss10.elemecdn.com/9/bb/e27858e973f5d7d3904835f46abbdjpeg.jpeg',
                 ],
            }
        },
        methods: {
            handleEdit(index, row) {
                sessionStorage.matchid = "" + row.id;
                // this.$cookie.set("matchid", row.id);
                this.$router.push("/matchdescinfo");
            },
            getSomeCompetition(){
                const result = this.$axios.get("matchinfo/getallmatchinfo");
                result.then(response => {
                    if (response.data.status == 200){
                        this.tableData=response.data.allmatchbypage;
                    }   
                });
            },
            toDesc(item){
                alert(item);
            },
            toMore(){
                this.$router.push("/allmatch");
            },
        },
        created(){
            sessionStorage.jump = "/background";
            // this.$cookie.set("jump", "/background");
            this.getSomeCompetition();
        },
    }
</script>

<style scoped>
    .transition-box {
    width: 100%;
    height: 100%;
    /* background: url('http://www.glutsm.com/themes/glutsm/images/bg-01.jpg'); */
    /* background: url('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic.vjshi.com%2F2018-11-02%2F808d9a28a382e025acfc5501af509e52%2F00002.jpg%3Fx-oss-process%3Dstyle%2Fwatermark&refer=http%3A%2F%2Fpic.vjshi.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1623859283&t=34c5f3c86ad763f419d70f11f5b2babc'); */
    background-size: 100% 100%;
    /* text-align: center; */
    color: #fff;
  }
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
    width: 1000px;
    margin: 0 auto;
    margin-top: 30px;
  }
</style>