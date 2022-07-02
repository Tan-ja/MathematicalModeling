<template>
    <div style="width:100%;height:100%;padding: 15px">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div style="margin-top: 10px">
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>关于我们</el-breadcrumb-item>
                    <el-breadcrumb-item>发展历程</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <div style="margin-top: 20px">
                <el-card shadow="hover" class="history">
                    <div class="block">
                    <el-timeline>
                        <el-timeline-item :timestamp="item.timey" v-for="item in histories" :key="item.id" placement="top"  type="primary" size="large">
                            <el-card>
                                <h3 v-for="y in item.event" :key="y.id">{{y.timem}}月
                                    <h4 v-for="m in y.event" :key="m.id">{{m.content}}
                                    </h4>
                                </h3>
                            </el-card>
                        </el-timeline-item>
                    </el-timeline>
                    </div>
                </el-card>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                histories:[],
            }
        },
        created(){
            this.getData();
        },
        methods:{
            getData(){
                const result = this.$axios.get("history/allhistory");
                result.then((response) => {
                    var history = response.data.history;
                    var histories = [];
                    for (let i = 0;i < history.length;i++){
                        let item = history[i];
                        if (histories.length == 0){
                            histories.push({
                                id:i+1,
                                timey:item.timey,
                                event:[
                                    {
                                        id:i+1,
                                        timem:item.timem,
                                        event:[
                                            {
                                                id:item.id,
                                                content:item.event
                                            },
                                        ]
                                    }
                                ],
                            });
                            continue;
                        }
                        var timeyIndex = -1;
                        var timemIndex = -1;
                        for (let j = 0;j < histories.length;j++){
                            if (item.timey == histories[j].timey){
                                timeyIndex = j;
                                for (let k = 0;k < histories[j].event.length;k++){
                                    if (item.timem == histories[j].event[k].timem){
                                        timemIndex = k;
                                    }
                                }
                            }
                        }
                        if (timeyIndex != -1 && timemIndex != -1){
                            histories[timeyIndex].event[timemIndex].event.push({
                                id:item.id,
                                content:item.event
                            });
                        }
                        if (timeyIndex != -1 && timemIndex == -1){
                            histories[timeyIndex].event.push({
                                id:i+1,
                                timem:item.timem,
                                event:[
                                    {
                                        id:item.id,
                                        content:item.event
                                    },
                                ]
                            });
                        }
                        if (timeyIndex == -1){
                            histories.push({
                                id:i+1,
                                timey:item.timey,
                                event:[
                                    {
                                        id:i+1,
                                        timem:item.timem,
                                        event:[
                                            {
                                                id:item.id,
                                                content:item.event
                                            },
                                        ]
                                    }
                                ],
                            });
                        }
                    }
                    this.histories=histories;
                });
            }
        }
    }
</script>

<style scoped>
    .history{
        margin: 10px 0px 0px 10px;
    }
</style>