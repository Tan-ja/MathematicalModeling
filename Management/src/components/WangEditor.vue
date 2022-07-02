<template>  
    <div style="width:100%">
        <div id="div1" style="width:100%">
        </div>
        <div style="display:none">
            <ol id="allfilepath">
            </ol>
        </div>
    </div>
</template>

<script>
    import E from 'wangeditor';
    export default {
        name: '',
        data() {
            return {
                editorShow: '',
                content: '',
                allFilePath: [],
            }
        },
        mounted(){
            this.initWangEditor();
        },
        methods:{
            initWangEditor(){
                //获取富文本挂再节点
                var ele = document.getElementById("div1");
                //创建富文本
                var editor = new E(ele);
                editor.config.showMenuTooltips = true;
                editor.config.menuTooltipPosition = 'down';
                editor.config.uploadFileName = 'file' ;
                editor.config.uploadImgMaxSize = 10 * 1024 * 1024; // 2M
                editor.config.uploadImgServer = this.$baseURL + 'upload/postfileforimage';
                // 配置 server 接口地址
                editor.config.uploadVideoServer = this.$baseURL + 'upload/postfileforvideo';
                editor.config.uploadVideoMaxSize = 1 * 1024 * 1024 * 1024; // 1024m
                editor.config.uploadVideoName = 'file';
                editor.config.uploadVideoAccept = ['mp4'];
                editor.config.height = 800;
                editor.config.zIndex = 100
                // 本地图片上传：重写方法
                editor.config.uploadImgHooks = {  //监听
                    before: function (xhr, editor, files) {
                    },
                    success: function (xhr, editor, result) {
                        let item = document.getElementById("#allfilepath");
                        // 图片上传并返回结果，图片插入成功之后触发
                    },
                    fail: function (xhr, editor, result) {
                        this.$message({
                            message:'上传失败',
                            type:'error',
                        });
                        return false;
                    },
                    error: function (xhr, editor) {
                        this.$message({
                            message:'上传错误',
                            type:'error',
                        });
                        return false;
                    },
                    timeout: function (xhr, editor) {
                    },
                    customInsert: function (insertImg, result, editor) {
                        var url = "http://localhost:8888/" + result.data[0].url;
                        insertImg(url);
                        let item = document.getElementById("allfilepath");
                        let myLi = document.createElement("li");
					    myLi.innerHTML = result.data[0].url;
                        item.appendChild(myLi);
                    }
                },
                //先把图片和视频上传到服务器，再将服务器返回的图片和视频的地址插入到文章中
                editor.config.uploadVideoHooks = {
                    // 上传视频之前
                    before: function(xhr) {
                    },
                    // 视频上传并返回了结果，视频插入已成功
                    success: function(xhr) {
                    },
                    // 视频上传并返回了结果，但视频插入时出错了
                    fail: function(xhr, editor, resData) {
                        this.$message({
                            message:'上传失败',
                            type:'error',
                        });
                        return false;
                    },
                    // 上传视频出错，一般为 http 请求的错误
                    error: function(xhr, editor, resData) {
                        this.$message({
                            message:'上传错误',
                            type:'error',
                        });
                        return false;
                    },
                    // 上传视频超时
                    timeout: function(xhr) {
                        this.$message({
                            message:'连接超时',
                            type:'error',
                        });
                        return false;
                    },
                    // 视频上传并返回了结果，想要自己把视频插入到编辑器中
                    // 例如服务器端返回的不是 { errno: 0, data: { url : '.....'} } 这种格式，可使用 customInsert
                    customInsert: function(insertVideoFn, result) {
                        insertVideoFn("http://localhost:8888/" + result.data[0].url);
                        let item = document.getElementById("allfilepath");
                        let myLi = document.createElement("li");
					    myLi.innerHTML = result.data[0].url;
                        item.appendChild(myLi);
                    },
                },
                editor.create();
                this.editorShow = editor;
            },
            updateCommnetValue(newValue){
                this.editorShow.txt.html(newValue);
            },
            submit(){
                this.$emit('updateCommnetValue', this.editorShow.txt.html());
            },
            submitAllFilePath(){
                let item = document.getElementById("allfilepath");
                let allChildren = item.children;
                let str = "";
                if (allChildren.length > 0){
                    for (let i = 0;i < allChildren.length;i++){
                        if (i == 0){
                            str = allChildren[i].innerHTML;
                        } else {
                            str = str + ":" + allChildren[i].innerHTML;
                        }
                    }
                }
                this.$emit('getAllFilePath', str);
            },
        },
    }
</script>
<style scoped>
</style>