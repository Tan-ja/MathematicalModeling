<template>
    <div>
        网站正在维护
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {
                
            }
        },
        beforeCreate(){
            let date = new Date();
            let hour = date.getHours();
            if (!(hour < 6 || hour > 22)){
                this.$router.push("/login");
            }
        },
    }
</script>

<style scoped>
    
</style>