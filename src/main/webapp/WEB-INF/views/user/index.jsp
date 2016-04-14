<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static" />
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
    <title>datatables</title>
    <link href="${ctxStatic}/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${ctxStatic}/js/plugins/datatables/css/css3/animate.css" rel="stylesheet" type="text/css" />
    <link href="${ctxStatic}/js/plugins/hyfonts/hyicons.css" rel="stylesheet" type="text/css" />
    <link href="${ctxStatic}/js/plugins/datatables/css/admin/style.css" rel="stylesheet" type="text/css" />


    <%--==================================================--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Include the plugin css file. -->
    <link rel="stylesheet" href="${ctxStatic}/js/plugins/wysiwyg_editor/css/froala_editor.css">
    <link rel="stylesheet" href="${ctxStatic}/js/plugins/wysiwyg_editor/css/plugins/fullscreen.min.css">
    <link rel="stylesheet" href="${ctxStatic}/js/plugins/wysiwyg_editor/css/plugins/file.min.css">
    <link rel="stylesheet" href="${ctxStatic}/js/plugins/wysiwyg_editor/css/plugins/image.min.css">
    <link rel="stylesheet" href="${ctxStatic}/js/plugins/wysiwyg_editor/css/plugins/video.min.css">
    <link rel="stylesheet" href="${ctxStatic}/js/plugins/wysiwyg_editor/css/plugins/code_view.min.css">
    <%--==================================================--%>
    <style>
        body {
            text-align: center;
        }
        div#editor {
            width: 81%;
            margin: auto;
            text-align: left;
        }
    </style>
</head>
<body>
<!-- head star -->
<div class="tnav row wrapper border-bottom white-bg page-heading">
    <div class="col-sm-4">
        <h2 class="fl">项目</h2>
        <ol class="breadcrumb fl">
            <li><a href="index.jsp">主页</a></li>
            <li><strong>项目</strong></li>
        </ol>
    </div>
</div>
<!-- head end -->

<!-- table star -->
<div class="row col-lg-12">
    <div class="wrapper wrapper-content animated fadeInUp">
        <div class="ibox">
            <div class="ibox-title"><h5>所有项目</h5>
                <div class="ibox-tools rboor">
                    <a href="javascript:;" class="btn btn-primary btn-xs p310" id="add"><i class="im-plus"></i> 创建新项目</a>
                    <a href="javascript:;" class="btn btn-primary btn-xs p310" ><i class="im-pencil2"></i> 编辑</a>
                    <a href="javascript:;" class="btn btn-primary btn-xs p310"><i class="im-remove4"></i> 删除</a>
                    <a href="javascript:;" class="btn btn-primary btn-xs p310"><i class="im-spell-check"></i> 批量审核</a>
                    <button id="refresh"  class="btn btn-primary btn-xs p310"><i class="im-spinner10 fa-spin"></i> 刷新</button>
                </div>
            </div>

            <div class="ibox-content">
                <div id="froala-editor">
                    <p>Use the Fullscreen button to start editing in fullscreen mode.</p>
                </div>
            </div>

            <div id="outwapper"></div>

        </div>
    </div>
</div>
<%--<script type="text/javascript" src="${ctxStatic}/js/plugins/datatables/js/jquery.min.js"></script>--%>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- Include the plugin js file. -->
<script type="text/javascript" src="${ctxStatic}/js/plugins/wysiwyg_editor/js/froala_editor.min.js"></script>
<script src="${ctxStatic}/js/plugins/wysiwyg_editor/js/plugins/fullscreen.min.js"></script>
<script src="${ctxStatic}/js/plugins/wysiwyg_editor/js/plugins/file.min.js"></script>
<script src="${ctxStatic}/js/plugins/wysiwyg_editor/js/plugins/link.min.js"></script>
<script src="${ctxStatic}/js/plugins/wysiwyg_editor/js/plugins/image.min.js"></script>
<script src="${ctxStatic}/js/plugins/wysiwyg_editor/js/plugins/video.min.js"></script>
<script src="${ctxStatic}/js/plugins/wysiwyg_editor/js/plugins/code_view.min.js"></script>
<script src="${ctxStatic}/js/plugins/wysiwyg_editor/js/plugins/quote.min.js"></script>
<script src="${ctxStatic}/js/plugins/wysiwyg_editor/js/plugins/align.min.js"></script>
<script src="${ctxStatic}/js/plugins/wysiwyg_editor/js/plugins/font_family.min.js"></script>
<script src="${ctxStatic}/js/plugins/wysiwyg_editor/js/plugins/font_size.min.js"></script>
<script>
    $(function() {
        $('div#froala-editor').froalaEditor({
            placeholderText: '请输入内容信息...',
            heightMin: 300,
            heightMax: 500,
            toolbarButtons: ['fullscreen', '|' , 'bold', 'italic', 'underline', 'strikeThrough', 'subscript', 'superscript', '|' , 'fontFamily', 'fontSize', 'align', 'indent',  '|' , 'insertLink', 'insertImage', 'insertVideo', 'insertFile' , '|' , 'undo', 'redo', 'clearFormatting', 'selectAll', 'html'],
            // Set the image upload URL.
            imageUploadURL: '${ctx}/user/uploadImg',
            imageUploadParams: {
                id: 'uploadImg'
            },
            // Set the file upload URL.
            fileUploadURL: '${ctx}/user/uploadFile',

            fileUploadParams: {
                id: 'uploadFile'
            }
        });

        $("#add").on("click",function(){
            var _html = $('div#froala-editor').froalaEditor('html.get', true);
            $("#outwapper").append(_html);
        });
    });
</script>
</body>
</html>

