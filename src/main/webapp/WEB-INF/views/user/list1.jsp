<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="renderer" content="webkit">

    <title>H+ 后台主题UI框架 - 主页</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link href="${ctxStatic}/hui/css/bootstrap.min.css?v=3.4.0" rel="stylesheet">
    <link href="${ctxStatic}/hui/font-awesome/css/font-awesome.css?v=4.3.0" rel="stylesheet">


    <link href="${ctxStatic}/hui/css/animate.css" rel="stylesheet">
    <link href="${ctxStatic}/hui/css/style.css?v=2.2.0" rel="stylesheet">

</head>

<body>
    <div id="wrapper">


        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="wrapper wrapper-content animated fadeInRight">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="ibox float-e-margins">
                            <div class="ibox-title">
                                <h5>可编辑表格</h5>
                                <div class="ibox-tools">
                                    <a class="collapse-link">
                                        <i class="fa fa-chevron-up"></i>
                                    </a>
                                    <a class="dropdown-toggle" data-toggle="dropdown" href="table_data_tables.html#">
                                        <i class="fa fa-wrench"></i>
                                    </a>
                                    <ul class="dropdown-menu dropdown-user">
                                        <li><a href="table_data_tables.html#">选项1</a>
                                        </li>
                                        <li><a href="table_data_tables.html#">选项2</a>
                                        </li>
                                    </ul>
                                    <a class="close-link">
                                        <i class="fa fa-times"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="ibox-content">
                                <div class="">
                                    <a onclick="fnClickAddRow();" href="javascript:void(0);" class="btn btn-primary ">添加行</a>
                                </div>
                                <table class="table table-striped table-bordered table-hover " id="editable">
                                    <thead>
                                    <tr>
                                        <th>编号</th>
                                        <th>登录名</th>
                                        <th>姓名</th>
                                        <th>邮箱</th>
                                        <th>最后登陆时间</th>
                                        <th>是否禁止</th>
                                        <th>创建时间</th>
                                        <th>备注信息</th>
                                    </tr>
                                    </thead>
                                   <%-- <tbody>
                                        <c:forEach items="${users}" var="u">
                                            <tr class="gradeX">
                                                <td>${u.id}</td>
                                                <td>${u.loginName}</td>
                                                <td>${u.name}</td>
                                                <td>${u.email}</td>
                                                <td>${u.loginDate}</td>
                                                <td>${u.loginFlag}</td>
                                                <td>${u.createDate}</td>
                                                <td>${u.remarks}</td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>--%>
                                    <%--<tfoot>
                                    <tr>
                                        <th>编号</th>
                                        <th>登录名</th>
                                        <th>姓名</th>
                                        <th>邮箱</th>
                                        <th>最后登陆时间</th>
                                        <th>是否禁止</th>
                                        <th>创建时间</th>
                                        <th>备注信息</th>
                                    </tr>
                                    </tfoot>--%>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Mainly scripts -->
    <script src="${ctxStatic}/hui/js/jquery-2.1.1.min.js"></script>
    <script src="${ctxStatic}/hui/js/bootstrap.min.js?v=3.4.0"></script>
    <!-- Data Tables -->
    <script src="${ctxStatic}/hui/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="${ctxStatic}/hui/js/plugins/dataTables/dataTables.bootstrap.js"></script>
    <!-- Page-Level Scripts -->
    <script>
        $(document).ready(function () {
            var table = $("#editable").DataTable({
                "ordering": false,//是否启用Datatables排序
                "searching": false,//是否开启插件搜索
                "lengthMenu": [ 5,10, 25, 50, 75, 100 ],//改变每页显示条数列表的选项
                "processing" : true,//显示加载信息
                "serverSide" : true,//服务器模式
                "autoWidth" : false,//自动宽度
                "stateSave" : true,//保持当前状态
                "paging": true,//显示分页
                "pageLength" : 5,//每页记录数
                "displayStart" : 0,
                "deferRender": true,//延迟渲染可以提高Datatables的加载速度
                /*"dom": '<l<\'#topPlugin\'>f>rt<i<\'#deleteDept\'>p><"clear">',*/
                "ajax": "${ctx}/user/list",
                "columns" : [{
                    "data" : "id",
                    "defaultContent" : "",
                    "width" : "8%",
                    "orderable": false
                }, {
                    "data" : "loginName",
                    "defaultContent" : "",
                    "width" : "8%",
                    "orderable": false
                }, {
                    "data" : "name",
                    "defaultContent" : "",
                    "width" : "8%",
                    "orderable": false
                }, {
                    "data" : "email",
                    "defaultContent" : "",
                    "width" : "8%",
                    "orderable": false
                }, {
                    "data" : "loginDate",
                    "defaultContent" : "",
                    "width" : "8%",
                    "orderable": false
                }, {
                    "data" : "loginFlag",
                    "defaultContent" : "",
                    "width" : "8%",
                    "orderable": false
                }, {
                    "data" : "createDate",
                    "defaultContent" : "",
                    "width" : "8%",
                    "orderable": false
                }, {
                    "data" : "remarks",
                    "defaultContent" : "",
                    "width" : "8%",
                    "orderable": false
                 }],
                "language" : { // 国际化配置
                    "processing" : "正在获取数据，请稍后...",
                    "lengthMenu" : "显示 _MENU_ 条",
                    "zeroRecords" : "<strong>没有您要的内容，输点其它关键字试试！！</strong>",
                    "info" : "从 _START_ 到  _END_ 条记录 总记录数为 _TOTAL_ 条",
                    "infoEmpty" : "记录数为0",
                    "infoFiltered" : "(全部记录数 _MAX_ 条)",
                    "infoPostFix" : "",
                    "search" : "搜索",
                    "url" : "",
                    "paginate" : {
                        "first" : "第一页",
                        "previous" : "上一页",
                        "next" : "下一页",
                        "last" : "最后一页"
                    }
                },
                //initComplete:initComplete
                /*,
                 drawCallback: function( settings ) {
                 //$('input[name=allChecked]')[0].checked=false;//取消全选状态
                 }*/
            });
            /**
             * ajax加载数据完成后回调json
             */
           /* table.on( 'xhr', function () {
               *//* var json = table.ajax.json();

                for(var i=0;i<json.data.length;i++){
                    deptNamesArray.put(json.data[i].id,json.data[i].loginName);
                };*//*
            });*/

            /**
             * 表格加载渲染完毕后执行的方法
             * @param data
             */
            function initComplete(data){
                /*//上方topPlugin DIV中需要追加的HTML代码
                var topPlugin='<button id="addButton" class="btn btn-success btn-sm" data-toggle="modal" data-target="#addDepartment" style="display:block;">' +
                        '<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加部门</button>';

                //删除部门按钮的HTMLDOM
                var deleteDeptHtml='<button id="deleteButton" type="button" class="btn btn-danger btn-sm" style="flot:left;margin-right:10px;">' +
                        '<span class="glyphicon glyphicon-trash" aria-hidden="true"></span>批量删除部门</button>' +
                        '<span name="deleteTips" style="flot:left;margin-right:10px;color:green;"></span><div style="clear:left;"></div>';

                $("#topPlugin").append(topPlugin);//在表格上方topPlugin DIV中追加HTML

                $("#deleteDept").append(deleteDeptHtml);//表格下方的按钮操作区
                $("#deleteButton").on("click", deleteDept);//给下方按钮绑定事件*/
            }

        });



            /* Init DataTables
            var oTable = $('#editable').dataTable({
                "processing": true,
                "serverSide": true,
                "ajax": "${ctx}/user"
            });

           Apply the jEditable handlers to the table
            oTable.$('td').editable('/user/update', {
                "callback": function (sValue, y) {
                    var aPos = oTable.fnGetPosition(this);
                    oTable.fnUpdate(sValue, aPos[0], aPos[1]);
                },
                "submitdata": function (value, settings) {
                    return {
                        "row_id": this.parentNode.getAttribute('id'),
                        "column": oTable.fnGetPosition(this)[2]
                    };
                },

                "width": "90%",
                "height": "100%"
            });


        });

        function fnClickAddRow() {
            $('#editable').dataTable().fnAddData([
                "Custom row",
                "New row",
                "New row",
                "New row",
                "New row"]);

        }

         */
    </script>
</body>

</html>
