<template>
    <div style="width:100%;height:100%;padding: 15px">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div style="margin-top:10px">
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>关于我们</el-breadcrumb-item>
                    <el-breadcrumb-item>组织结构</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <div class="introduction">
                <el-col :span="28">
                    <el-card shadow="hover">
                        <div class="intro"><font color = "#409EFF" size="5px">组织结构</font></div>
                        <el-divider></el-divider>
                        <label for="">                                 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;桂林理工大学数学建模协会于2005年在理学院的重视和支持下成立，2007年在雁山校区成立并于2008年升为校级协会，是桂林理工大学大型的学术型协会以及星级社团之一。英文全名为：Mathematical  modeling Association in Guilin University of Technology。我会致力于承办历年大学生数学建模比赛，为学校培养建模人才。<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我会现已有三大机构：分别是理事会，团支部和事业群三大机构。<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数学建模协会以理事会为最高常务管理机构，理事会成员有五位成员：分别为顾问，会长，团支书，行政副会长和学术副会长。<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;理事会下设六大部门，分为行政类部门（秘书部、组织部、宣传部），学术类部门（学习部、策划部、信息部）对协会日常工作进行分配协作完成。<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;另外以团支部为内部干部管理和培养机构，由团支书领导，组织委员、宣传委员、文体委员协助，对协会内部干部与环境进行系统的管理和培养，将协会干部培养成具备高素质和能力的新型大学生人才。<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;事业群下属的数学建模基地，致力于促进校内外学术交流，营造校内学术氛围，提高会内学术水平，提升我校竞赛成绩，以及构建并完善协会学术研究体系，辅助管理和联系会员进行学习交流。<br/>                
                        </label>
                    </el-card>
                </el-col>
            </div>
            <!-- <div class="div-other">
                <el-card shadow="hover" class="otherone">
                    <div>热文推荐</div>
                    <el-divider></el-divider>
                </el-card>
                <el-card shadow="hover" class="otherone">
                    <div>精彩评论</div>
                    <el-divider></el-divider>
                </el-card>
            </div> -->
        </div>
    </div>
</template>

<script>
    export default {
        name: '',
        data() {
            return {

            }
        }
    }
</script>

<style scoped>
    .introduction{
        margin-top: 20px;
        font-size: bold;
        color: #409EFF;
    }
    .other{
        margin: 0px auto 10px 10px;
        height: 80px;
    }
    .intro{
        text-align: center;
    }
    .otherone{
        margin: 0px auto 10px 10px;
        height: 80px;
    }
    .div-other{
        margin-left: 10px;
        width: 32%;
        float: right;
    }
</style>