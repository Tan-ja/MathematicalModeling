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
    // ?????????????????????
    {path: '/websitemaintenance', name: 'WebSiteMaintenance', component: WebSiteMaintenance},
    // ??????????????????
    {path: '/findbackpassword', name: 'FindBackPassword', component: FindBackPassword},
    {path: '/registry', name: 'Registry', component: Registry}, // ????????????
    {path:'/home',name:'Home', redirect: 'background', component:Home,children:
    [
      // ????????????
      {path: '/background',name: 'Background',component: Background},
      // ????????????
      {path: '/introduction',name: 'Introduction',component: Introduction},
      // ????????????
      {path: '/structure',name: 'Structure',component: Structure},
      // ????????????
      {path: '/history',name: 'History',component: History},
      // ????????????
      {path: '/cadresList',name: 'CadresList',component: CadresList},
      // ????????????
      {path: '/contactUs',name: 'ContactUs',component: ContactUs},
      // ????????????
      {path: '/teachers',name: 'Teachers',component: Teachers},
      // ????????????
      {path: '/cadresED',name: 'CadresED',component: CadresED},
      // ????????????
      {path: '/associationHonor',name: 'AssociationHonor',component: AssociationHonor},
      // ????????????
      {path: '/competitionResults',name: 'CompetitionResults',component: CompetitionResults},
      // ????????????
      {path: '/propaganda',name: 'Propaganda',component: Propaganda},
      // ????????????
      {path: '/examPapers',name: 'ExamPapers',component: ExamPapers},
      // ????????????
      {path: '/learningMaterials',name: 'LearningMaterials',component: LearningMaterials},
      // ????????????
      {path: '/booksRecommended',name: 'BooksRecommended',component: BooksRecommended},
      // ????????????
      {path: '/commonlySoftware',name: 'CommonlySoftware',component: CommonlySoftware},
      // ????????????
      {path: '/goodWebSite',name: 'GoodWebSite',component: GoodWebSite},
      // ???????????? 
      {path: '/academicAdvisory',name: 'AcademicAdvisory',component: AcademicAdvisory},
      // ????????????
      {path: '/contestTraining',name: 'ContestTraining',component: ContestTraining},
      // ?????????
      {path: '/hallOfFame',name: 'HallOfFame',component: HallOfFame},
      // ??????????????????????????????
      {path: '/descTeacher',name: 'DescTeacher',component: DescTeacher},
      // ??????????????????????????????
      {path: '/descStudent', name: 'DescStudent', component: DescStudent},
      // ?????????????????????
      {path: '/descStudentFamous', name: 'DescStudentFamous', component: DescStudentFamous},
      // ????????????
      {path: '/descAcademic', name: 'DescAcademic', component: DescAcademic},
      // ??????????????????????????????
      {path: '/teacherOrStudentDesc', name: 'TeacherOrStudentDesc', component: TeacherOrStudentDesc},
      // ????????????????????????
      {path: '/bookDesc', name: 'BookDesc', component: BookDesc},
      // ?????????????????????????????????????????????????????????
      {path: '/optionDesc', name: 'OptionDesc', component: OptionDesc},
      // ??????????????????
      {path: '/userinfo', name: 'UserInfo', component: UserInfo},
      // ??????????????????
      {path: '/problemfeedback', name: 'ProblemFeedback', component: ProblemFeedback},
      // ????????????
      {path: '/videoplayerdesc', name: 'VideoPlayerDesc', component: VideoPlayerDesc},
      // ??????????????????????????????????????????
      {path: '/searchcontent', name: 'SearchContent', component: SearchContent},
      // ??????????????????????????????????????????????????????????????????
      {path: '/block', name: 'Block', component: Block},
      // ????????????
      {path: '/clubacctivities', name: 'ClubActivities', component: ClubActivities},
      // ???????????????????????????
      {path: '/otheruserdesc', name: 'OtherUserDesc', component: OtherUserDesc},
      // ?????????
      {path: '/editor', name: 'Editor', component: Editor},
      // ??????????????????
      {path: '/participatematch', name: 'ParticipateMatch', component: ParticipateMatch},
      // ??????????????????
      {path: '/participantsinfo', name: 'ParticipantsInfo', component: ParticipantsInfo},
      // ????????????
      {path: '/matchdescinfo', name: 'MatchDescInfo', component: MatchDescInfo},
      // ????????????????????????
      {path: '/personalentryinfo', name: 'PersonalEntryInformation', component: PersonalEntryInformation},
      // ????????????????????????
      {path: '/personalentrydesc', name: 'PersonalEntryDesc', component: PersonalEntryDesc},
      // ?????????????????????
      {path: '/currentregistrationprogress', name: 'CurrentRegistrationProgress', component: CurrentRegistrationProgress},
      // ??????????????????
      {path: '/knowledgeofsc', name: 'KnowledgeOfSubjectCompetition', component: KnowledgeOfSubjectCompetition},
      // ?????????????????????????????????
      {path: '/allmatch',name: 'AllMatch',component: AllMatch},
    ]}
  ],
})
