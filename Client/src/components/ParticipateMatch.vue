<template>
    <div style="width:100%;height:100%;padding: 15px">
        <div style="width:1000px;heigth:100%;margin: 0 auto">
            <!-- 返回主界面 -->
            <div>
                <el-page-header @back="goBack" content="报名参赛">
                </el-page-header>
            </div>
            <el-divider></el-divider>
            <!-- 学生填写参赛信息 -->
            <div style="width:1000px;height:100%;margin: 0 auto">
                <el-col :span="28">
                    <participantsinfo>
                    </participantsinfo>
                    <el-divider></el-divider>
                </el-col>
            </div>
        </div>
    </div>
</template>

<script>
    import ParticipantsInfo from './ParticipantsInfo.vue';   
    export default {
        name: '',
        components:{
            participantsinfo: ParticipantsInfo,
        },
        data() {
            return {
                active:0,
                matchtitle:'欢迎报名参加此次数学建模比赛',
                radio:'1',
                personal: {
                    name: '',
                    region: '',
                    date1: '',
                    date2: '',
                    delivery: false,
                    type: [],
                    resource: '',
                    desc: ''
                },
                team:[],
                rules: {
                    name: [
                        { required: true, message: '请输入活动名称', trigger: 'blur' },
                        { min: 3, max: 5, message: '长度在 3 到 5 个字符', trigger: 'blur' }
                    ],
                }
            }
        },
        methods:{
            goBack(){
                this.$router.push("/matchdescinfo");
            },
            submitForm(formName) {
                this.$refs[formName].validate((valid) => {
                if (valid) {
                    alert('submit!');
                } else {
                    console.log('error submit!!');
                    return false;
                }
                });
            },
            resetForm(formName) {
                this.$refs[formName].resetFields();
            },
        }
    }
</script>

<style scoped>
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
    height: 100%;
  }
</style>