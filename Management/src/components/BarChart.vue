<template>
    <div id="barchart" style="width:100%;height:500px"></div>
</template>
<script>
    import echarts from 'echarts';
    export default {
        props:['name','value'],
        name: '',
        data() {
            return {
            }
        },
        mounted(){
            this.buildBarChart();
        },
        methods:{
            buildBarChart(){
                let barchart = echarts.init(document.getElementById("barchart"));
                barchart.setOption({
                     title: {
                        text: '专业比例',
                        subtext: 'From ExcelHome',
                        sublink: 'http://e.weibo.com/1341556070/AjQH99che'
                    },
                    tooltip: {
                        trigger: 'axis',
                        axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                            type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                        },
                        formatter: function (params) {
                            var tar = params[1];
                            return tar.name + '<br/>' + tar.seriesName + ' : ' + tar.value;
                        }
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
                    },
                    xAxis: {
                        type: 'category',
                        splitLine: {show: false},
                        data: this.name
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [
                        {
                            name: '辅助',
                            type: 'bar',
                            stack: '总量',
                            itemStyle: {
                                barBorderColor: 'rgba(0,0,0,0)',
                                color: 'rgba(0,0,0,0)'
                            },
                            emphasis: {
                                itemStyle: {
                                    barBorderColor: 'rgba(0,0,0,0)',
                                    color: 'rgba(0,0,0,0)'
                                }
                            },
                            data: this.value
                        },
                        {
                            name: '报名人数',
                            type: 'bar',
                            stack: '总量',
                            label: {
                                show: true,
                                position: 'inside'
                            },
                            data: this.value
                        }
                    ],
                });
            },
        },
    }
</script>

<style scoped>
    
</style>