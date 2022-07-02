<template>
    <div style="width:100%;height:100%;padding: 15px">
        <div style="width:1500px;heigth:100%;margin: 0 auto">
            <div style="margin-top: 10px">
                <el-breadcrumb separator-class="el-icon-arrow-right">
                    <el-breadcrumb-item :to="{ path: '/background' }">首页</el-breadcrumb-item>
                    <el-breadcrumb-item>关于我们</el-breadcrumb-item>
                    <el-breadcrumb-item>协会简介</el-breadcrumb-item>
                </el-breadcrumb>
            </div>
            <div class="introduction">
                <el-col :span="28">
                    <el-card shadow="hover">
                        <div class="intro"><font color = "#409EFF" size="5px">协会简介</font></div>
                        <el-divider></el-divider>
                        <label for="">                                 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;桂林理工大学数学建模协会起源于2003年，2005年正式注册成立，2007年搬迁至雁山校区，于2008年成为首批校级协会，系理学院（原数理系）所属社团，广西十大明星社团，广西优秀大学生社团，校五星级社团，全国高校数学建模协会联盟第一发起社团，全校学术性最浓、专业性最强、影响力最广、获奖次数最多的学术科技类社团。<br/>
                                
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;协会自成立以来，一直致力于推广和应用数学建模，拓广大学生的数学知识面、知识量，激发大学生的创造力和应用能力，培养团体精神和拼搏精神，活跃校园学术氛围，宣传和推进学校学术和素质教育发展。<br/>
                            
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;协会拥有夺宝奇兵、数独比赛、数我特宫、现场答题、数模讲座、软件培训、数模课堂、赛前培训、贴题活动等系列活动，其中夺宝奇兵、数独比赛、现场答题已多次被其他高校借鉴举办，形成极具影响力的数模社团新型发展的突破口。协会每年独家承办校教务处主办的数学建模竞赛和数学竞赛及其全国选拔赛，成为我校选拔和培养学术人才第一学生社团。<br/>
                            
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;协会先后于2010年11月、2011年8月、2012年8月成功发起并完成了三次改革，系我校第一个进行深度改革的学生组织，协会制度也随改革的进程在名誉会长李亮的亲自撰稿下达到了6大部分、40余章节、逾7万字的最全面完整的学生社团文化与工作手册，为其他学生组织的改革提供了完整的样本。<br/>
                                
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作为广西第一个提出以企业管理优化模式进行发展和管理的社团，于2012年8月成立了数学建模基地、数学杂志社等学术研究和推广机构，以更有效的营造学术研究氛围和提高建模水平，并能极大地促进协会的组织结构的调整与融合，为社团多元化发展奠定基础。<br/>
                                
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数学建模基地是由协会中优秀的学术专研人员在协会强大的指导老师队伍的支援下，开展软件培训、数模课堂、赛前培训、高数培训等系列培训与研讨活动，促进与会员之间的沟通和学术交流，紧紧围绕学术专一性发展的发展路线进行工作开展，致力于打造全国一流的学生建模研究组织。<br/>
                            
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数学杂志社是互联网环境下的数模信息传播与交流的新介质，致力于成为全国最具影响力的学生社团学术研究期刊，构建协会对外交流的新平台，加深与外校同类型社团的学术与建设交流，有效的传播协会的动态信息。数学杂志社从2012年9月开始发行《数模周刊》，每周一刊，对校内外数学爱好者开放投稿与交流平台，积极搭建学术知识分享的高质量平台。<br/>
                                
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;协会一直秉着“团结、奋进、务实、创新”的会训，培养协会每一位成员，健全协会每一项制度，提高协会每一项工作，完善协会组织结构，营造良好的学习与工作氛围，提升干部的团结协作能力，发扬协会优良的务实精神，提高社团成员的创新能力，以积极向上的精神风貌迎接协会不断面临的新挑战与新机遇，使得协会在每个阶段都能上一崭新的台阶。<br/>
                                
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;协会的宗旨是宣传建模、开展建模、使会员具有较强的数学建模能力，以便更好的服务社会。使我们的会员具备一定的数学建模知识和数学分析能力，提高他们的逻辑思维能力，为以后的人生奠定不可或缺的能力基础。<br/>                     
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