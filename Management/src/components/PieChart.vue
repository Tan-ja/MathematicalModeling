<template>
    <div id="piechart" style="width:100%;height:500px"></div>
</template>

<script>
    import echarts from 'echarts';
    export default {
        name: '',
        data() {
            return {
                charts: '',
                opinion:['男','女'],
                opinionData:[
                  {value:335, name:'男'},
                  {value:310, name:'女'},
                ,]
            }
        },
        methods:{
            drawPie(id){
               this.charts = echarts.init(document.getElementById(id));
               this.charts.setOption({
                 title: {
                    text: '性别比例',
                    subtext: '纯属虚构',
                    left: 'center'
                },
                tooltip: {
                    trigger: 'item'
                },
                legend: {
                    orient: 'vertical',
                    left: 'left',
                },
                series: [
                    {
                        name: '访问来源',
                        type: 'pie',
                        radius: '80%',
                        data: [
                            {value: 335, name: '男'},
                            {value: 310, name: '女'},
                        ],
                        emphasis: {
                            itemStyle: {
                                shadowBlur: 10,
                                shadowOffsetX: 0,
                                shadowColor: 'rgba(0, 0, 0, 0.5)'
                            }
                        }
                    }
                ],
               })
            }
        },
        mounted(){
            this.drawPie('piechart');
        }
    }
</script>

<style scoped>
    
</style>