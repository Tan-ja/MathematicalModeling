import Vue from 'vue'
import Router from 'vue-router'
// import HelloWorld from '@/components/HelloWorld'
import Login from '@/components/Login.vue'
import Home from '@/components/Home.vue'
import Registry from '@/components/Registry.vue'
import BooksRecommended from '@/components/BooksRecommended.vue'
import CommonlyUsedWebSite from '@/components/CommonlyUsedWebSite.vue'
import Exampapers from '@/components/Exampapers.vue'
import GoodWebSite from '@/components/GoodWebSite.vue'
import History from '@/components/History.vue'
import Honor from '@/components/Honor.vue'
import LearningMaterials from '@/components/LearningMaterials.vue'
import Result from '@/components/Result.vue'
import StudentDescInfo from '@/components/StudentDescInfo.vue'
import TeacherDescInfo from '@/components/TeacherDescInfo.vue'
import AcademicInformation from '@/components/AcademicInformation.vue'
import ContestTraining from '@/components/ContestTraining.vue'
import Video from '@/components/Video.vue'
import TeaDescInfo from '@/components/TeaDescInfo.vue'
import StuDescInfo from '@/components/StuDescInfo.vue'
import AddHonor from '@/components/AddHonor.vue'
import OptionDesc from '@/components/OptionDesc.vue'
import UpdateHonor from '@/components/UpdateHonor.vue'
import Background from '@/components/Background.vue'
import BooksRecommendedDesc from '@/components/BooksRecommendedDesc.vue'
import AddTeacherTotal from '@/components/AddTeacherTotal.vue'
import UserFeedback from '@/components/UserFeedback.vue'
import UserFeedbackDesc from '@/components/UserFeedbackDesc.vue'
import AddStudentTotal from '@/components/AddStudentTotal.vue'
import PublishNewMatch from '@/components/PublishNewMatch.vue'
import UserMatchAuditDesc from '@/components/UserMatchAuditDesc.vue'
import AllMatch from '@/components/AllMatch.vue'
import MatchDescInfo from '@/components/MatchDescInfo.vue'
import PieChart from '@/components/PieChart.vue'
import BarChart from '@/components/BarChart.vue'
import AllUserInfo from '@/components/AllUserInfo.vue'
import VideoPlayerDesc from '@/components/VideoPlayerDesc.vue'
import ClubActivities from '@/components/ClubActivities.vue'
Vue.use(Router)
export default new Router({
  routes: [
    {path:'/',redirect:'login'},
    {path: '/login',name: 'Login',component: Login},
    {path:'/home',name:'Home',component:Home, redirect:'background', children:
    [
      {path: '/background',name: 'Background',component: Background},
      {path: '/booksrecommended',name: 'BooksRecommended',component: BooksRecommended},
      {path: '/commonlyusedwebsite',name: 'CommonlyUsedWebSite',component: CommonlyUsedWebSite},
      {path: '/exampapers',name: 'Exampapers',component: Exampapers},
      {path: '/goodwebsite',name: 'GoodWebSite',component: GoodWebSite},
      {path: '/history',name: 'History',component: History},
      {path: '/honor',name: 'Honor',component: Honor},
      {path: '/learningmaterials',name: 'LearningMaterials',component: LearningMaterials},
      {path: '/result',name: 'Result',component: Result},
      {path: '/Studentdescinfo',name: 'StudentDescInfo',component: StudentDescInfo},
      {path: '/teacherdescinfo',name: 'TeacherDescInfo',component: TeacherDescInfo},
      {path: '/video',name: 'Video',component: Video},
      {path: '/academicinformation',name: 'AcademicInformation',component: AcademicInformation},
      {path: '/contesttraining',name: 'ContestTraining',component: ContestTraining},
      {path: '/teadescinfo',name: 'TeaDescInfo',component: TeaDescInfo},
      {path: '/studescinfo',name: 'StuDescInfo',component: StuDescInfo},
      {path: '/addhonor',name: 'AddHonor',component: AddHonor},
      {path: '/optiondesc',name: 'OptionDesc',component: OptionDesc},
      {path: '/updatehonor',name: 'UpdateHonor',component: UpdateHonor},
      {path: '/booksrecommendeddesc',name: 'BooksRecommendedDesc',component: BooksRecommendedDesc},
      {path: '/addteachertotal',name: 'AddTeacherTotal',component: AddTeacherTotal},
      {path: '/userfeedback',name: 'UserFeedback',component: UserFeedback},
      {path: '/userfeedbackdesc',name: 'UserFeedbackDesc',component: UserFeedbackDesc},
      {path: '/addstudenttotal',name: 'AddStudentTotal',component: AddStudentTotal},
      // 管理员添加赛事
      {path: '/publishnewmatch',name: 'PublishNewMatch',component: PublishNewMatch},
      // 管理员查看用户报名的审核状态
      {path: '/usermatchauditdesc',name: 'UserMatchAuditDesc',component: UserMatchAuditDesc},
      // 展示所有已发布赛事信息
      {path: '/allmatch',name: 'AllMatch',component: AllMatch},
      // 展示赛事详情
      {path: '/matchdescinfo',name: 'MatchDescInfo',component: MatchDescInfo},
      // 饼状图
      {path: '/piechart',name: 'PieChart',component: PieChart},
      // 注册管理员
      {path: '/registry', name: 'Registry', component: Registry}, 
      // 所有用户信息
      {path: '/alluserinfo', name: 'AllUserInfo', component: AllUserInfo},  
      // 所有用户信息
      {path: '/videoplayerdesc', name: 'VideoPlayerDesc', component: VideoPlayerDesc}, 
      // 社团活动
      {path: '/clubactivities', name: 'ClubActivities', component: ClubActivities},
    ]}
  ],
})
