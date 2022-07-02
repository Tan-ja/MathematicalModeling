<template>
    <div style="width:100%;height:100%;margin:0px;padding:0px">
        <!-- <el-button @click="show = !show">Click Me</el-button> -->
        <!-- <img :src="src" alt="" style="width:100%;height:100%"> -->
        <!-- <transition name="el-fade-in-linear" style="margin:0px;height:0px">
            <div v-show="show" class="transition-box"></div>
        </transition> -->
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                show: true,
                // src: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.care-e.net.cn%2Fpublic%2Fstatic%2Findex%2Fimages%2Fpttx01.jpg&refer=http%3A%2F%2Fwww.care-e.net.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1626785394&t=80d5558874d8a3e9909c6a873a08efe8',
            }
        }
    }
</script>

<style scoped>
    .transition-box {
    width: 80%;
    height: 100%;
    /* background: url('http://www.glutsm.com/themes/glutsm/images/bg-01.jpg'); */
    background-size: 100% 100%;
    text-align: center;
    color: #fff;
    margin: auto;
  }
</style>