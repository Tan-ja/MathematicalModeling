<template>
    <div style="width:100%;height:100%;padding: 15px;background-color: white">
        <div style="width:1500px;margin: 0 auto">
            <div>
                <el-page-header @back="goBack" content="修改页面">
                </el-page-header>
            </div>
            <div style="margin-top:50px">
                <el-card class="box-card">
                    <el-form :model="newItem" :rules="rules" ref="newItem" label-width="100px" class="demo-ruleForm">
                    <el-form-item label="标题" prop="atitle">
                        <el-input v-model="newItem.atitle"></el-input>
                    </el-form-item>
                    <el-form-item label="类型">
                        <el-input v-model="newItem.acategory" :disabled="disabled"></el-input>
                    </el-form-item>
                    <el-form-item label="活动时间" required>
                        <el-form-item prop="adate">
                            <el-date-picker type="date" placeholder="选择日期" v-model="newItem.adate" style="width: 100%;"></el-date-picker>
                        </el-form-item>
                    </el-form-item>
                    <el-form-item label="来源" prop="afrom">
                        <el-input v-model="newItem.afrom"></el-input>
                    </el-form-item>
                    <el-form-item label="标题内容">
                        <el-input v-model="newItem.acontent" type="textarea"></el-input>
                    </el-form-item>
                    <el-form-item label="详细内容">
                        <ucomment 
                        :con="newItem.acontentdesc" 
                        v-on:updateCommnetValue="updateCommnetValue"
                        style="width:100%" 
                        ref="uc"
                        >
                        </ucomment>
                    </el-form-item>
                    <el-form-item style="margin-top:20px">
                        <el-button type="primary" @click="submitForm('newItem')">确认修改</el-button>
                        <el-button @click="resetForm('newItem')">重置</el-button>
                    </el-form-item>
                    </el-form>
                </el-card>
            </div>
        </div>
    </div>
</template>

<script>
    import UserCommentEditor from './WangEditor.vue';
    export default {
        name: '',
        components:{
            ucomment: UserCommentEditor,
        },
        data() {
            return {
                // 用户添加新的协会荣誉
                newItem:{
                    acategory:'', 
                    adate:'',  
                    aconsider:'',
                    acomment:'',
                    areaders:'',
                    atitle:'',  
                    afrom:'',  
                    acontent:'',  
                    afaceaddress:'',
                    acontentdesc:'', 
                },
                rules: {
                    atitle: [
                        { required: true, message: '请输入活动名称', trigger: 'blur' },
                    ],
                    adate: [
                        { required: true, message: '请选择日期', trigger: 'change' },
                    ],
                    afrom: [
                        { required: true, message: '请输入活动来源', trigger: 'blur' },
                    ],
                },
                disabled:true,
            }
        },
        methods:{
            submitForm(formName) {
                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        this.updateHonor();
                    } else {
                        return false;
                    }
                });
            },
            resetForm(formName) {
                this.$refs[formName].resetFields();
            },
            goBack() {
                this.$parent.backToJust();
            },
            async getDate(){
                var teaId = sessionStorage.adid;
                const result = await this.$axios.get("academic/acadedesc?adid=" + teaId);
                if (result.data.status == 200){
                    this.newItem=result.data.academic;
                    this.$refs.uc.updateCommnetValue(this.newItem.acontentdesc);
                } else {
                    this.$message({
                        message:result.data.statusText,
                        type:'error',
                    });
                    return false;
                }
            },
            async updateHonor(){
                this.$refs.uc.submit();
                var d = new Date(this.newItem.adate); 
                let month = d.getMonth() > 10 ? d.getMonth(): ( "" + (d.getMonth() + 1)); 
                var datetime=d.getFullYear() + '-' + month + '-' + d.getDate();
                this.newItem.adate = datetime;
                this.$refs.uc.submit();
                const result = await this.$axios.post("/academic/updateacademicdesc", this.newItem);
                if (result.data.status == 200){
                    this.$message({
                        message:result.data.statusText,
                        type:'success',
                    });
                } else {
                    this.$message({
                        message:result.data.statusText,
                        type:'error',
                    });
                    return false;
                }
            },
            updateCommnetValue(newValue){
                this.newItem.acontentdesc = newValue;
            },
        },
    }
</script>

<style scoped>
    .text {
    font-size: 14px;
  }

  .item {
    padding: 18px 0;
  }

  .box-card {
    width: 1500px;
    height: 100%;
  }
</style>