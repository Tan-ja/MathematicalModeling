<template>
    <el-card class="box-card">
        <div slot="header" class="clearfix">
            <span>{{matchtitle}}</span>
        </div>
        <div>
            <el-radio-group v-model="radio">
                <el-radio label="1">
                    <el-link :underline="false" @click="resetForm('personal')">个人参赛</el-link>
                </el-radio>
                <el-radio label="2">
                    <el-link :underline="false" @click="resetForm('personal')">团队参赛</el-link>
                </el-radio>
            </el-radio-group>
        </div>
        <div style="margin-top:40px" v-if="radio == '1'">
            <div style="text-align:center">
                <font color = "#409EFF" size="5px">队长信息</font>
            </div>
            <el-form :model="personal" :rules="rules" ref="personal" label-width="100px" class="demo-ruleForm">
                <el-form-item>
                </el-form-item>
                <el-form-item label="姓名" prop="pname">
                    <el-input v-model="personal.pname"></el-input>
                </el-form-item>
                <el-form-item label="学号" prop="pstunum">
                    <el-input v-model="personal.pstunum"></el-input>
                </el-form-item>
                <el-form-item label="班级年级" prop="pgrade">
                    <el-input v-model="personal.pgrade"></el-input>
                </el-form-item>
                <el-form-item label="学院" prop="pacademy">
                    <el-input v-model="personal.pacademy"></el-input>
                </el-form-item>
                <el-form-item label="宿舍号" prop="pdormitoryno">
                    <el-input v-model="personal.pdormitoryno"></el-input>
                </el-form-item>
                <el-form-item label="校区" prop="pcampus">
                    <el-input v-model="personal.pcampus"></el-input>
                </el-form-item>
                <el-form-item label="籍贯" prop="pnativeplace">
                    <el-input v-model="personal.pnativeplace"></el-input>
                </el-form-item>
                <el-form-item label="身份证号" prop="pidnumber">
                    <el-input v-model="personal.pidnumber"></el-input>
                </el-form-item>
                <el-form-item label="QQ号" prop="pqqno">
                    <el-input v-model="personal.pqqno"></el-input>
                </el-form-item>
                <el-form-item label="手机号" prop="pmobilephoneno">
                    <el-input v-model="personal.pmobilephoneno"></el-input>
                </el-form-item>
                <el-form-item label="Email" prop="email">
                    <el-input v-model="personal.email"></el-input>
                </el-form-item>
                <el-form-item label="是否有类似参赛经验,请说明具体情况">
                    <el-input type="textarea" v-model="personal.pattendeddesc" rows="4"></el-input>
                </el-form-item>
                <el-form-item>
                    <el-button type="primary" @click="sureToCreateSimple('personal')">提交</el-button>
                    <el-button @click="resetForm('personal')">重置</el-button>
                </el-form-item>
            </el-form>
        </div>
        <div style="margin-top:40px" v-if="radio == '2'">
            <div style="text-align:center">
                <font color = "#409EFF" size="5px">队长信息</font>
            </div>
            <el-form :model="personal" :rules="rules" ref="personal" label-width="100px" class="demo-ruleForm">
                <el-form-item>
                </el-form-item>
                <el-form-item label="姓名" prop="pname">
                    <el-input v-model="personal.pname"></el-input>
                </el-form-item>
                <el-form-item label="学号" prop="pstunum">
                    <el-input v-model="personal.pstunum"></el-input>
                </el-form-item>
                <el-form-item label="班级年级" prop="pgrade">
                    <el-input v-model="personal.pgrade"></el-input>
                </el-form-item>
                <el-form-item label="学院" prop="pacademy">
                    <el-input v-model="personal.pacademy"></el-input>
                </el-form-item>
                <el-form-item label="宿舍号" prop="pdormitoryno">
                    <el-input v-model="personal.pdormitoryno"></el-input>
                </el-form-item>
                <el-form-item label="校区" prop="pcampus">
                    <el-input v-model="personal.pcampus"></el-input>
                </el-form-item>
                <el-form-item label="籍贯" prop="pnativeplace">
                    <el-input v-model="personal.pnativeplace"></el-input>
                </el-form-item>
                <el-form-item label="身份证号" prop="pidnumber">
                    <el-input v-model="personal.pidnumber"></el-input>
                </el-form-item>
                <el-form-item label="QQ号" prop="pqqno">
                    <el-input v-model="personal.pqqno"></el-input>
                </el-form-item>
                <el-form-item label="手机号" prop="pmobilephoneno">
                    <el-input v-model="personal.pmobilephoneno"></el-input>
                </el-form-item>
                <el-form-item label="Email" prop="email">
                    <el-input v-model="personal.email"></el-input>
                </el-form-item>
                <el-form-item label="是否有类似参赛经验,请说明具体情况">
                    <el-input type="textarea" v-model="personal.pattendeddesc" rows="4"></el-input>
                </el-form-item>
            </el-form>
            <!-- 全部队友信息 -->
            <div style="text-align:center">
                <font color = "#409EFF" size="5px">队友信息</font>
            </div>
            <div v-for="(item,index) in team" :key="index">
                <font color = "#409EFF">队友{{index + 1}}</font>
                <el-form  :model="item" :rules="rules" :ref="item.refid" label-width="100px" class="demo-ruleForm">
                    <el-form-item>
                    </el-form-item>
                    <el-form-item label="姓名" prop="pname">
                    <el-input v-model="item.pname"></el-input>
                    </el-form-item>
                    <el-form-item label="学号" prop="pstunum">
                        <el-input v-model="item.pstunum"></el-input>
                    </el-form-item>
                    <el-form-item label="班级年级" prop="pgrade">
                        <el-input v-model="item.pgrade"></el-input>
                    </el-form-item>
                    <el-form-item label="学院" prop="pacademy">
                        <el-input v-model="item.pacademy"></el-input>
                    </el-form-item>
                    <el-form-item label="宿舍号" prop="pdormitoryno">
                        <el-input v-model="item.pdormitoryno"></el-input>
                    </el-form-item>
                    <el-form-item label="校区" prop="pcampus">
                        <el-input v-model="item.pcampus"></el-input>
                    </el-form-item>
                    <el-form-item label="籍贯" prop="pnativeplace">
                        <el-input v-model="item.pnativeplace"></el-input>
                    </el-form-item>
                    <el-form-item label="身份证号" prop="pidnumber">
                        <el-input v-model="item.pidnumber"></el-input>
                    </el-form-item>
                    <el-form-item label="QQ号" prop="pqqno">
                        <el-input v-model="item.pqqno"></el-input>
                    </el-form-item>
                    <el-form-item label="手机号" prop="pmobilephoneno">
                        <el-input v-model="item.pmobilephoneno"></el-input>
                    </el-form-item>
                    <el-form-item label="Email" prop="email">
                        <el-input v-model="item.email"></el-input>
                    </el-form-item>
                    <el-form-item label="是否有类似参赛经验,请说明具体情况">
                        <el-input type="textarea" v-model="item.pattendeddesc" rows="4"></el-input>
                    </el-form-item>
                </el-form>
            </div>
            <el-button type="primary" style="float:right;margin-bottom:10px" @click="submitForm">提交</el-button>
        </div>
    </el-card>
</template>

<script>
    export default {
        name: '',
        data() {
            var chackName = (rule, value, callback) => { // 验证姓名
                if (value === '') {
                    callback(new Error('请输入姓名'));
                } else {
                    callback();
                }
            };
            var chackStuNum = (rule, value, callback) => { // 验证学号
                if (value === '') {
                    callback(new Error('请输入学号'));
                } else {
                    callback();
                }
            };
            var chackGrade = (rule, value, callback) => { // 验证班级年级
                if (value === '') {
                    callback(new Error('请输入班级年级'));
                } else {
                    callback();
                }
            };
            var chackXueYuan = (rule, value, callback) => { // 验证学院
                if (value === '') {
                    callback(new Error('请选择学院'));
                } else {
                    callback();
                }
            };
            var checkSuSheNum = (rule, value, callback) => { // 验证宿舍号
                if (value === '') {
                    callback(new Error('请输入宿舍号'));
                } else {
                    callback();
                }
            };
            var checkCampus = (rule, value, callback) => { // 验证校区
                if (value === '') {
                    callback(new Error('请选择校区'));
                } else {
                    callback();
                }
            };
            var checkFrom = (rule, value, callback) => { // 验证籍贯
                if (value === '') {
                    callback(new Error('请输入籍贯'));
                } else {
                    callback();
                }
            };
            var checkIdentiNum = (rule, value, callback) => {  // 验证身份证号
                //身份证号（18位）正则
                var cP = /^[1-9]\d{5}(18|19|([23]\d))\d{2}((0[1-9])|(10|11|12))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$/;
                if (value === '') {
                    callback(new Error('请输入身份证号'));
                }
                if (!cP.test(value)) {
                    callback(new Error('请输入正确格式的身份证号'));
                } else {
                    callback();
                }
            };
            var checkQQNum = (rule, value, callback) => { // 验证QQ号
                //QQ号正则，5至11位
                var qqPattern = /^[1-9][0-9]{4,10}$/;
                if (value === '') {
                    callback(new Error('请输入QQ号'));
                }
                if (!qqPattern.test(value)) {
                    callback(new Error('请输入正确格式的QQ号'));
                } else {
                    callback();
                }
            };
            var checkPhoneNum = (rule, value, callback) => { // 验证手机号
                //手机号正则
                var mPattern = /^1[34578]\d{9}$/;
                if (value === '') {
                    callback(new Error('请输入手机号'));
                }
                if (!mPattern.test(value)) {
                    callback(new Error('请输入正确格式的手机号'));
                } else {
                    callback();
                }
            };
            var checkEmail = (rule, value, callback) => { // 验证Email
                //Email正则
                var ePattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
                if (value === '') {
                    callback(new Error('请输入Email'));
                }
                if (!ePattern.test(value)) {
                    callback(new Error('请输入正确格式的Email'));
                } else {
                    callback();
                }
            };
            return {
                active:0,
                matchtitle:'欢迎报名参加此次数学建模比赛',
                radio: '1',
                personal: {
                    pname: '',
                    pstunum: '',
                    pgrade: '',
                    pdormitoryno: '',
                    pacademy: '',
                    pcampus: '',
                    pnativeplace: '',
                    pidnumber: '',
                    pqqno: '',
                    pmobilephoneno: '',
                    email: '',
                    pattendeddesc: '',
                },
                teamman: {
                    pname: '',
                    pstunum: '',
                    pgrade: '',
                    pdormitoryno: '',
                    pacademy: '',
                    pcampus: '',
                    pnativeplace: '',
                    pidnumber: '',
                    pqqno: '',
                    pmobilephoneno: '',
                    email: '',
                    pattendeddesc: '',
                },
                team:[],
                rules: {
                    pname: [
                        { validator: chackName, trigger: 'blur' }
                    ],
                    pstunum: [
                        { validator: chackStuNum, trigger: 'blur' }
                    ],
                    pgrade: [
                        { validator: chackGrade, trigger: 'blur' }
                    ],
                    pdormitoryno: [
                        { validator: checkSuSheNum, trigger: 'blur' }
                    ],
                    pacademy: [
                        { validator: chackXueYuan, trigger: 'blur' }
                    ],
                    pcampus: [
                        { validator: checkCampus, trigger: 'blur' }
                    ],
                    pnativeplace: [
                        { validator: checkFrom, trigger: 'blur' }
                    ],
                    pidnumber: [
                        { validator: checkIdentiNum, trigger: 'blur' }
                    ],
                    pqqno: [
                        { validator: checkQQNum, trigger: 'blur' }
                    ],
                    pmobilephoneno: [
                        { validator: checkPhoneNum, trigger: 'blur' }
                    ],
                    email: [
                        { validator: checkEmail, trigger: 'blur' }
                    ],
                },
                number: 3,
                matchInfo:{},
            }
        },
        methods:{
            submitForm(){
                this.$refs.personal.validate((valid) => {
                    if (valid) {
                        var finalResult = [];
                        for (let i = 0;i < this.team.length;i++){
                            if (this.team[i].pstunum != ''){
                                let refid = this.team[i].refid;
                                this.$refs[refid][0].validate((valid) => {
                                    if (valid) {
                                        delete this.team[i].refid;
                                        finalResult.push(this.team[i]);
                                    }
                                });
                            }
                        }
                        if (finalResult.length > 0){
                            this.sureToCreateTeam(this.personal,finalResult);
                        } else if (finalResult.length == 0){
                            this.$notify({
                                message:'请输入队友信息',
                                type:"error",
                            });
                            return false;
                        }
                    } else {
                        this.$notify({
                            message:'请输入队长信息',
                            type:"error",
                        });
                        return false;
                    }
                });
            },
            sureToCreateTeam(personal, finalResult){
                var success = true;
                // 先添加队长信息
                let teami = {
                    stunum: personal.pstunum,
                    compeid: this.matchInfo.id,
                    capid: JSON.parse(sessionStorage.user).userid,
                    pdate: new Date(),
                    currentstatus: 1,
                    mrole: 1,
                    presult: '',
                };
                this.$axios.post("teaminfo/addteaminfo", teami).then((response) => {
                    if (response.data.status == 300){
                        this.$notify({
                            message:response.data.statusText,
                            type:'error',
                        });
                        return false;
                    } else if (response.data.status != 200 && response.data.status != 300){
                        success = false;
                    }
                });
                this.$axios.post("participant/addparticipant", personal).then((response) => {
                    if (response.data.status != 200){
                        success = false;
                    }
                });
                // 添加队友信息
                for (let i = 0;i < finalResult.length;i++){
                    let teami = {
                        stunum: finalResult[i].pstunum,
                        compeid: this.matchInfo.id,
                        capid: JSON.parse(sessionStorage.user).userid,
                        pdate: new Date(),
                        currentstatus: 1,
                        mrole: 1,
                        presult: '',
                    };
                    this.$axios.post("teaminfo/addteaminfo", teami).then((response) => {
                        if (response.data.status != 200){
                            success = false;
                        }
                    });
                    this.$axios.post("participant/addparticipant", finalResult[i]).then((response) => {
                    if (response.data.status != 200){
                        success = false;
                    }
                });
                }
                if (success){
                    this.$notify({
                        message:'报名成功',
                        type:"success",
                    });
                    for (let i = 0;i < this.team.length;i++){
                        this.team[i].pattendeddesc = "";
                    }
                    this.team = [];
                    this.resetForm("personal");
                    return true;
                } else {
                    this.$notify({
                        message:'报名失败',
                        type:"error",
                    });
                    return false;
                }
            },
            sureToCreateSimple(formName){
                this.$refs[formName].validate((valid) => {
                    if (valid) {
                        let teami = {
                            stunum: this.personal.pstunum,
                            compeid: this.matchInfo.id,
                            capid: JSON.parse(sessionStorage.user).userid,
                            pdate: new Date(),
                            currentstatus: 1,
                            mrole: 0,
                        };
                        var success = true;
                        this.$axios.post("teaminfo/addteaminfo", teami).then((response) => {
                            if (response.data.status == 300){
                                this.$notify({
                                    message:response.data.statusText,
                                    type:'error',
                                });
                                return false;
                            } else if (response.data.status != 200 && response.data.status != 300){
                                success = false;
                            }
                        });
                        this.$axios.post("participant/addparticipant", this.personal).then((response) => {
                            if (response.data.status != 200){
                                success = false;
                            }
                        });
                        if (success){
                            this.$notify({
                                message:'报名成功',
                                type:"success",
                            });
                            this.resetForm("personal");
                            return true;
                        } else {
                            this.$notify({
                                message:'报名失败',
                                type:"error",
                            });
                            return false;
                        }
                    } else {
                        this.$notify({
                            message:' 请输入参赛人信息',
                            type:"error",
                        });
                        return false;
                    }
                });
            },
            resetForm(formName) {
                this.$refs[formName].resetFields();
                this.personal.pattendeddesc="";
            },
            init(){
                for (let i = 0;i < (this.matchInfo.maxn - 1);i++){
                    let teamperson = {
                        pname: '',
                        pstunum: '',
                        pgrade: '',
                        pdormitoryno: '',
                        pacademy: '',
                        pcampus: '',
                        pnativeplace: '',
                        pidnumber: '',
                        pqqno: '',
                        pmobilephoneno: '',
                        email: '',
                        pattendeddesc: '',
                        refid: 'personal' + (i + 1),
                    };
                    this.team.push(teamperson);
                }
            },
        },
        created(){
            this.init();
            let matchId = sessionStorage.matchid;
            const result = this.$axios.get("matchinfo/getmatchbyid?id=" + matchId);
            result.then(response => {
                if (response.data.status == 200){
                    this.matchInfo = response.data.matchById;
                }
            });
        },
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