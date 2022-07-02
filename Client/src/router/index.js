import Vue from 'vue'
import Router from 'vue-router'
// import HelloWorld from '@/components/HelloWorld'
import Login from '@/components/Login.vue'
import Home from '@/components/Home.vue'
import Introduction from '@/components/Introduction.vue'
import Structure from '@/components/Structure.vue'
import History from '@/components/History.vue'
import CadresList from '@/components/CadresList.vue'
import ContactUs from '@/components/ContactUs.vue'
import Teachers from '@/components/Teachers.vue'
import CadresED from '@/components/CadresED.vue'
import AssociationHonor from '@/components/AssociationHonor.vue'
import CompetitionResults from '@/components/CompetitionResults.vue'
import Propaganda from '@/components/Propaganda.vue'
import ExamPapers from '@/components/ExamPapers.vue'
import LearningMaterials from '@/components/LearningMaterials.vue'
import BooksRecommended from '@/components/BooksRecommended.vue'
import CommonlySoftware from '@/components/CommonlySoftware.vue'
import GoodWebSite from '@/components/GoodWebSite.vue'
import AcademicAdvisory from '@/components/AcademicAdvisory.vue'
import ContestTraining from '@/components/ContestTraining.vue'
import HallOfFame from '@/components/HallOfFame.vue'
import DescTeacher from '@/components/DescTeacher.vue'
import DescStudent from '@/components/DescStudent.vue'
import DescStudentFamous from '@/components/DescStudentFamous.vue'
import DescAcademic from '@/components/DescAcademic.vue'
import TeacherOrStudentDesc from '@/components/TeacherOrStudentDesc.vue'
import BookDesc from '@/components/BookDesc.vue'
import Registry from '@/components/Registry.vue'
import OptionDesc from '@/components/OptionDesc.vue'
import UserInfo from '@/components/UserInfo.vue'
import ProblemFeedback from '@/components/ProblemFeedback.vue'
import Background from '@/components/Background.vue'
import VideoPlayerDesc from '@/components/VideoPlayerDesc.vue'
import SearchContent from '@/components/SearchContent.vue'
import Block from '@/components/Block.vue'
import ClubActivities from '@/components/ClubActivities.vue'
import OtherUserDesc from '@/components/OtherUserDesc.vue'
import Editor from '@/components/Editor.vue'
import ParticipateMatch from '@/components/ParticipateMatch.vue'
import ParticipantsInfo from '@/components/ParticipantsInfo.vue'
import MatchDescInfo from '@/components/MatchDescInfo.vue'
import PersonalEntryInformation from '@/components/PersonalEntryInformation.vue'
import PersonalEntryDesc from '@/components/PersonalEntryDesc.vue'
import CurrentRegistrationProgress from '@/components/CurrentRegistrationProgress.vue'
import WebSiteMaintenance from '@/components/WebSiteMaintenance.vue'
import FindBackPassword from '@/components/FindBackPassword.vue'
import KnowledgeOfSubjectCompetition from '@/components/KnowledgeOfSubjectCompetition.vue'
import AllMatch from '@/components/AllMatch.vue'
Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',redirect:'login'},
    {path: '/login',name: 'Login',component: Login},
    // 用户的报名进度
    {path: '/websitemaintenance', name: 'WebSiteMaintenance', component: WebSiteMaintenance},
    // 用户找回密码
    {path: '/findbackpassword', name: 'FindBackPassword', component: FindBackPassword},
    {path: '/registry', name: 'Registry', component: Registry}, // 用户注册
    {path:'/home',name:'Home', redirect: 'background', component:Home,children:
    [
      // 网站背景
      {path: '/background',name: 'Background',component: Background},
      // 协会简介
      {path: '/introduction',name: 'Introduction',component: Introduction},
      // 组织结构
      {path: '/structure',name: 'Structure',component: Structure},
      // 发展历程
      {path: '/history',name: 'History',component: History},
      // 干部名录
      {path: '/cadresList',name: 'CadresList',component: CadresList},
      // 联系我们
      {path: '/contactUs',name: 'ContactUs',component: ContactUs},
      // 名师指导
      {path: '/teachers',name: 'Teachers',component: Teachers},
      // 干部风采
      {path: '/cadresED',name: 'CadresED',component: CadresED},
      // 协会荣誉
      {path: '/associationHonor',name: 'AssociationHonor',component: AssociationHonor},
      // 竞赛成绩
      {path: '/competitionResults',name: 'CompetitionResults',component: CompetitionResults},
      // 宣传视频
      {path: '/propaganda',name: 'Propaganda',component: Propaganda},
      // 试题论文
      {path: '/examPapers',name: 'ExamPapers',component: ExamPapers},
      // 学习资料
      {path: '/learningMaterials',name: 'LearningMaterials',component: LearningMaterials},
      // 书籍推荐
      {path: '/booksRecommended',name: 'BooksRecommended',component: BooksRecommended},
      // 常用软件
      {path: '/commonlySoftware',name: 'CommonlySoftware',component: CommonlySoftware},
      // 优秀网站
      {path: '/goodWebSite',name: 'GoodWebSite',component: GoodWebSite},
      // 学术资询 
      {path: '/academicAdvisory',name: 'AcademicAdvisory',component: AcademicAdvisory},
      // 竞赛培训
      {path: '/contestTraining',name: 'ContestTraining',component: ContestTraining},
      // 名人堂
      {path: '/hallOfFame',name: 'HallOfFame',component: HallOfFame},
      // 指导老师个人详细信息
      {path: '/descTeacher',name: 'DescTeacher',component: DescTeacher},
      // 学生干部个人详细信息
      {path: '/descStudent', name: 'DescStudent', component: DescStudent},
      // 名人堂个人信息
      {path: '/descStudentFamous', name: 'DescStudentFamous', component: DescStudentFamous},
      // 竞赛视频
      {path: '/descAcademic', name: 'DescAcademic', component: DescAcademic},
      // 老师或学生的个人信息
      {path: '/teacherOrStudentDesc', name: 'TeacherOrStudentDesc', component: TeacherOrStudentDesc},
      // 推荐书籍详细信息
      {path: '/bookDesc', name: 'BookDesc', component: BookDesc},
      // 协会荣誉，竞赛成绩，竞赛培训等详细信息
      {path: '/optionDesc', name: 'OptionDesc', component: OptionDesc},
      // 用户个人信息
      {path: '/userinfo', name: 'UserInfo', component: UserInfo},
      // 用户问题反馈
      {path: '/problemfeedback', name: 'ProblemFeedback', component: ProblemFeedback},
      // 视频播放
      {path: '/videoplayerdesc', name: 'VideoPlayerDesc', component: VideoPlayerDesc},
      // 用户在主界面进行文章模糊查询
      {path: '/searchcontent', name: 'SearchContent', component: SearchContent},
      // 用户在主界面进行文章模糊查询后跳转到空白界面
      {path: '/block', name: 'Block', component: Block},
      // 社团活动
      {path: '/clubacctivities', name: 'ClubActivities', component: ClubActivities},
      // 其他用户的详细信息
      {path: '/otheruserdesc', name: 'OtherUserDesc', component: OtherUserDesc},
      // 输入框
      {path: '/editor', name: 'Editor', component: Editor},
      // 学生参加比赛
      {path: '/participatematch', name: 'ParticipateMatch', component: ParticipateMatch},
      // 学生参加比赛
      {path: '/participantsinfo', name: 'ParticipantsInfo', component: ParticipantsInfo},
      // 赛事详情
      {path: '/matchdescinfo', name: 'MatchDescInfo', component: MatchDescInfo},
      // 用户个人参赛信息
      {path: '/personalentryinfo', name: 'PersonalEntryInformation', component: PersonalEntryInformation},
      // 用户个人参赛详情
      {path: '/personalentrydesc', name: 'PersonalEntryDesc', component: PersonalEntryDesc},
      // 用户的报名进度
      {path: '/currentregistrationprogress', name: 'CurrentRegistrationProgress', component: CurrentRegistrationProgress},
      // 学科竞赛知识
      {path: '/knowledgeofsc', name: 'KnowledgeOfSubjectCompetition', component: KnowledgeOfSubjectCompetition},
      // 展示所有已发布赛事信息
      {path: '/allmatch',name: 'AllMatch',component: AllMatch},
    ]}
  ],
})
