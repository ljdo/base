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
    <link href="${ctxStatic}/js/plugins/treeTable/themes/vsStyle/treeTable.min.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="${ctxStatic}/js/jquery.min.js"></script>
    <script src="${ctxStatic}/js/plugins/treeTable/jquery.treeTable.min.js" type="text/javascript"></script>
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
                <table id="treeTable" class="table table-striped table-bordered table-condensed">
                    <thead><tr><th>名称</th><th>链接</th><th style="text-align:center;">排序</th><th>可见</th><th>权限标识</th><th>操作</th></tr></thead>
                    <tbody>
                    <c:forEach items="${list}" var="m" >
                        <tr id="${m.id}" pId="${m.parent.id ne '1'?m.parent.id:'0'}">
                            <td nowrap><i class="icon-${not empty m.icon ? m.icon:" hide"}"></i><a href="${ctx}/sys/menu/toEdit?id=${m.id}">${m.name}</a></td>
                            <td title="${m.href}">${m.href}</td>
                            <td style="text-align:center;">
                                    <input type="hidden" name="ids" value="${m.id}"/>
                                    <input name="sorts" type="text" value="${m.sort}" style="width:50px;margin:0;padding:0;text-align:center;">
                                        ${m.sort}
                            </td>
                            <td>${m.isShow}</td>
                            <td title="${m.permission}">${m.permission}</td>
                                <td nowrap>
                                    <a href="${ctx}/sys/menu/toEdit?id=${m.id}">修改</a>
                                    <a href="${ctx}/sys/menu/delete?id=${m.id}" onclick="return confirmx('要删除该菜单及所有子菜单项吗？', this.href)">删除</a>
                                    <a href="${ctx}/sys/menu/toEdit?parent.id=${m.id}">添加下级菜单</a>
                                </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

        </div>
    </div>
</div>


<script>
    $(function() {
        $("#treeTable").treeTable({expandLevel : 3}).show();
    });
</script>
</body>
</html>

