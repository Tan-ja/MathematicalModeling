<template>
    <div style="width:100%;height:100%">
        <div>
            <quill-editor 
            v-model="content" 
            :options="editorOption"
            ref="uc"
            >
            </quill-editor>
        </div>
        <div class="can-com">
            <el-button type="primary" @click="submitTwo">提交</el-button>
            <el-button type="info" @click="reset">重置</el-button>
        </div>
        <div style="display:none">
            <el-upload
                :action="action"
                :before-upload="beforeUpload"
                :on-success="handleSuccess"
                :on-progress="uploadIng"
            >
            <el-button size="small" class="uploadVoiceBtn" type="primary">upload</el-button>
            </el-upload>
        </div>
    </div>
</template>

<script>
    export default {
        props:['con'],
        name: '',
        data() {
            return {
                dialogVisible: false, // 显示视频上传
                toolbarTips: [ 
                    {Choice:'.ql-bold',title:'加粗'}, 
                    {Choice:'.ql-italic',title:'倾斜'}, 
                    {Choice:'.ql-underline',title:'下划线'}, 
                    {Choice:'.ql-header',title:'段落格式'}, 
                    {Choice:'.ql-strike',title:'删除线'}, 
                    {Choice:'.ql-blockquote',title:'块引用'}, 
                    {Choice:'.ql-code-block',title:'插入代码段'}, 
                    {Choice:'.ql-size',title:'字体大小'}, 
                    {Choice:'.ql-list[value="ordered"]',title:'编号列表'}, 
                    {Choice:'.ql-list[value="bullet"]',title:'项目列表'}, 
                    {Choice:'.ql-header[value="1"]',title:'标题1'}, 
                    {Choice:'.ql-header[value="2"]',title:'标题2'}, 
                    {Choice:'.ql-align',title:'对齐方式'}, 
                    {Choice:'.ql-color',title:'字体颜色'}, 
                    {Choice:'.ql-background',title:'背景颜色'}, 
                    {Choice:'.ql-image',title:'图像'}, 
                    {Choice:'.ql-video',title:'视频'}, 
                    {Choice:'.ql-link',title:'添加链接'}, 
                    {Choice:'.ql-formula',title:'插入公式'}, 
                    {Choice:'.ql-font',title:'字体'},
                    {Choice:'.ql-clean',title:'清除格式'}, 
                    {Choice:'.ql-indent[value="-1"]',title:'向左缩进'}, 
                    {Choice:'.ql-indent[value="+1"]',title:'向右缩进'}, 
                    {Choice:'.ql-direction',title:'文本方向'},
                    {Choice:'.ql-script[value="sub"]',title:'下标'},
                    {Choice:'.ql-script[value="super"]',title:'上标'}, 
                    {Choice:'.ql-header .ql-picker-label',title:'标题大小'}, 
                    {Choice:'.ql-header .ql-picker-item[data-value="1"]',title:'标题一'}, 
                    {Choice:'.ql-header .ql-picker-item[data-value="2"]',title:'标题二'}, 
                    {Choice:'.ql-header .ql-picker-item[data-value="3"]',title:'标题三'}, 
                    {Choice:'.ql-header .ql-picker-item[data-value="4"]',title:'标题四'}, 
                    {Choice:'.ql-header .ql-picker-item[data-value="5"]',title:'标题五'}, 
                    {Choice:'.ql-header .ql-picker-item[data-value="6"]',title:'标题六'}, 
                    {Choice:'.ql-header .ql-picker-item:last-child',title:'标准'}, 
                    {Choice:'.ql-size .ql-picker-item[data-value="small"]',title:'小号'}, 
                    {Choice:'.ql-size .ql-picker-item[data-value="large"]',title:'大号'}, 
                    {Choice:'.ql-size .ql-picker-item[data-value="huge"]',title:'超大号'}, 
                    {Choice:'.ql-size .ql-picker-item:nth-child(2)',title:'标准'}, 
                    {Choice:'.ql-align .ql-picker-item:first-child',title:'居左对齐'}, 
                    {Choice:'.ql-align .ql-picker-item[data-value="center"]',title:'居中对齐'}, 
                    {Choice:'.ql-align .ql-picker-item[data-value="right"]',title:'居右对齐'}, 
                    {Choice:'.ql-align .ql-picker-item[data-value="justify"]',title:'两端对齐'}
                ],
                videoLink:"",
                action:'',
                editorOption: {
                    modules: {
                        toolbar: {
                            container:[
                                ["bold", "italic", "underline", "strike"], //加粗，斜体，下划线，删除线
                                ["blockquote"], //引用，代码块
                                [{ header: 1 }, { header: 2 }], // 标题，键值对的形式；1、2表示字体大小
                                [{ list: "ordered" }, { list: "bullet" }], //列表
                                [{ indent: "-1" }, { indent: "+1" }], // 缩进
                                [{ direction: "rtl" }], // 文本方向
                                [{ size: ["small", false, "large", "huge"] }], // 字体大小
                                [{ header: [1, 2, 3, 4, 5, 6, false] }], //几级标题
                                [{ color: [] }, { background: [] }], // 字体颜色，字体背景颜色
                                [{ font: [] }], //字体
                                [{ align: [] }], //对齐方式
                                ["clean"], //清除字体样式
                            ],
                        },
                        // imageResize: {
                        //     displayStyles: {
                        //         backgroundColor: 'black',
                        //         border: 'none',
                        //         color: 'white'
                        //     },
                        //     modules: [ 'Resize', 'DisplaySize', 'Toolbar' ],
                        // },
                    },
                },
                content:'',
                contenttwo:'',
                isShowEmoji:false,
            }
        },
        methods:{
            submitTwo(){
                this.$emit('updateCommnetValue', this.content);
            },
            reset(){
                this.content='';
            },
            tellToOther(newValue){
                let quill = this.$refs.uc.quill;
                quill.focus();
                let index = quill.getSelection(); // 获取用户点击位置
                if (index == 0){
                    if (this.content.length != 0){
                        this.content = this.content + newValue;
                    } else {
                        this.content = newValue;
                    }
                } else {
                    quill.insertText(index, newValue);
                }
            },
            selectEmoji(event){
                this.$emit("selectEmoji", event);
            },
            updateLocation(){
                
            },
            beforeUpload(file){
                // file.type好像只能返回图片的格式，其他的将会是 ""， 所以需要自己获取后缀名判断文件格式
                let pointIndex = file.name.lastIndexOf(".");
                let fileType = file.name.substring(pointIndex+1);  //获取到文件后缀名
                // if (fileType !== 'mp3' && fileType !== 'ogg' && fileType !== 'wav') {
                if (fileType !== 'mp4') {
                    this.$notify({
                        message:'请选择mp4格式的视频',
                        type:'error',
                    });
                    return false;
                }
            },
            uploadIng(){    //上传时显示loading
            },
            handleSuccess(res, file, fileList){
                this.fullscreenLoading = false;
                // 获取富文本组件实例
                let quill = this.$refs.uc.quill;
                console.log(this.$picURL + res);
                let length = quill.getSelection().index; // 获取光标所在位置
                // insertEmbed(index: Number(插入的位置), type: String(标签类型), value: any(参数，将传入到create的方法中去), source: String = 'api')
                quill.insertEmbed(length, 'video', this.$picURL + res);
                quill.setSelection(length + 1); //光标位置向后移动一位
                this.submitTwo();
                // else {    
                //     this.$message.error(res.msg);    // 上传失败，提示错误信息
                // }
            },
        },
        mounted(){
            for(let item of this.toolbarTips){
                let tip = document.querySelector('.quill-editor ' + item.Choice)
                if (!tip) continue
                tip.setAttribute('title',item.title)
            }
        },
        created(){
            this.action=this.$baseURL + 'upload/postfile';
            this.content=this.con;
        },
    }
</script>

<style scoped>
    .can-com{
        text-align: right;
        margin-top: 20px;
    }
    .li-c{
        float: left;
        /* border: 1px black solid; */
        line-height: 50px;
        text-align: center;
        width: 50px;
        height: 50px;
    }
</style>