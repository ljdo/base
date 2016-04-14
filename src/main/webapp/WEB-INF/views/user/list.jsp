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

    <!-- Morris -->
    <link href="${ctxStatic}/hui/css/plugins/morris/morris-0.4.3.min.css" rel="stylesheet">

    <!-- Gritter -->
    <link href="${ctxStatic}/hui/js/plugins/gritter/jquery.gritter.css" rel="stylesheet">

    <link href="${ctxStatic}/hui/css/animate.css" rel="stylesheet">
    <link href="${ctxStatic}/hui/css/style.css?v=2.2.0" rel="stylesheet">

</head>

<body>
    <div id="wrapper">
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">

                        <div class="dropdown profile-element"> <span>
                            <img alt="image" class="img-circle" src="${ctxStatic}/hui/img/profile_small.jpg" />
                             </span>
                            <a data-toggle="dropdown" class="dropdown-toggle" href="list.jsp#">
                                <span class="clear"> <span class="block m-t-xs"> <strong class="font-bold">Beaut-zihan</strong>
                             </span> <span class="text-muted text-xs block">超级管理员 <b class="caret"></b></span> </span>
                            </a>
                            <ul class="dropdown-menu animated fadeInRight m-t-xs">
                                <li><a href="form_avatar.html">修改头像</a>
                                </li>
                                <li><a href="profile.html">个人资料</a>
                                </li>
                                <li><a href="contacts.html">联系我们</a>
                                </li>
                                <li><a href="mailbox.html">信箱</a>
                                </li>
                                <li class="divider"></li>
                                <li><a href="login.html">安全退出</a>
                                </li>
                            </ul>
                        </div>
                        <div class="logo-element">
                            H+
                        </div>

                    </li>
                    <li class="active">
                        <a href="/index"><i class="fa fa-columns"></i> <span class="nav-label">用户管理</span><span class="label label-danger pull-right">2.0</span></a>
                    </li>
                    <li>
                        <a href="/index"><i class="fa fa-columns"></i> <span class="nav-label">系统管理</span><span class="label label-danger pull-right">2.0</span></a>
                    </li>
                    <li>
                        <a href="list.jsp#"><i class="fa fa fa-globe"></i> <span class="nav-label">v2.0新增</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="toastr_notifications.html">Toastr通知</a>
                            </li>
                            <li><a href="nestable_list.html">嵌套列表</a>
                            </li>
                            <li><a href="timeline_v2.html">时间轴</a>
                            </li>
                            <li><a href="forum_main.html">论坛</a>
                            </li>
                            <li><a href="code_editor.html">代码编辑器</a>
                            </li>
                            <li><a href="modal_window.html">模态窗口</a>
                            </li>
                            <li><a href="validation.html">表单验证</a>
                            </li>
                            <li><a href="tree_view_v2.html">树形视图</a>
                            </li>
                            <li><a href="chat_view.html">聊天窗口</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="list.jsp#"><i class="fa fa-bar-chart-o"></i> <span class="nav-label">图表</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="graph_echarts.html">百度ECharts</a>
                            </li>
                            <li><a href="graph_flot.html">Flot</a>
                            </li>
                            <li><a href="graph_morris.html">Morris.js</a>
                            </li>
                            <li><a href="graph_rickshaw.html">Rickshaw</a>
                            </li>
                            <li><a href="graph_peity.html">Peity</a>
                            </li>
                            <li><a href="graph_sparkline.html">Sparkline</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="mailbox.html"><i class="fa fa-envelope"></i> <span class="nav-label">信箱 </span><span class="label label-warning pull-right">16</span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="mailbox.html">收件箱</a>
                            </li>
                            <li><a href="mail_detail.html">查看邮件</a>
                            </li>
                            <li><a href="mail_compose.html">写信</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="widgets.html"><i class="fa fa-flask"></i> <span class="nav-label">小工具</span></a>
                    </li>
                    <li>
                        <a href="list.jsp#"><i class="fa fa-edit"></i> <span class="nav-label">表单</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="form_basic.html">基本表单</a>
                            </li>
                            <li><a href="form_validate.html">表单验证</a>
                            </li>
                            <li><a href="form_advanced.html">高级插件</a>
                            </li>
                            <li><a href="form_wizard.html">步骤条</a>
                            </li>
                            <li><a href="form_webuploader.html">百度WebUploader</a>
                            </li>
                            <li><a href="form_file_upload.html">文件上传</a>
                            </li>
                            <li><a href="form_editors.html">富文本编辑器</a>
                            </li>
                            <li><a href="form_simditor.html">simditor</a>
                            </li>
                            <li><a href="form_avatar.html">头像裁剪上传</a>
                            </li>
                            <li><a href="layerdate.html">日期选择器layerDate</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="list.jsp#"><i class="fa fa-desktop"></i> <span class="nav-label">页面</span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="contacts.html">联系人</a>
                            </li>
                            <li><a href="profile.html">个人资料</a>
                            </li>
                            <li><a href="projects.html">项目</a>
                            </li>
                            <li><a href="project_detail.html">项目详情</a>
                            </li>
                            <li><a href="file_manager.html">文件管理器</a>
                            </li>
                            <li><a href="calendar.html">日历</a>
                            </li>
                            <li><a href="faq.html">帮助中心</a>
                            </li>
                            <li><a href="timeline.html">时间轴</a>
                            </li>
                            <li><a href="pin_board.html">标签墙</a>
                            </li>
                            <li><a href="invoice.html">单据</a>
                            </li>
                            <li><a href="login.html">登录</a>
                            </li>
                            <li><a href="register.html">注册</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="list.jsp#"><i class="fa fa-files-o"></i> <span class="nav-label">其他页面</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="search_results.html">搜索结果</a>
                            </li>
                            <li><a href="lockscreen.html">登录超时</a>
                            </li>
                            <li><a href="404.html">404页面</a>
                            </li>
                            <li><a href="500.html">500页面</a>
                            </li>
                            <li><a href="empty_page.html">空白页</a>
                            </li>
                        </ul>
                    </li>

                    <li>
                        <a href="list.jsp#"><i class="fa fa-flask"></i> <span class="nav-label">UI元素</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="typography.html">排版</a>
                            </li>
                            <li><a href="icons.html">字体图标</a>
                            </li>
                            <li><a href="iconfont.html">阿里巴巴矢量图标库</a>
                            </li>
                            <li><a href="draggable_panels.html">拖动面板</a>
                            </li>
                            <li><a href="buttons.html">按钮</a>
                            </li>
                            <li><a href="tabs_panels.html">选项卡 & 面板</a>
                            </li>
                            <li><a href="notifications.html">通知 & 提示</a>
                            </li>
                            <li><a href="badges_labels.html">徽章，标签，进度条</a>
                            </li>
                            <li><a href="layer.html">Web弹层组件layer</a>
                            </li>
                            <li><a href="tree_view.html">树形视图</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="grid_options.html"><i class="fa fa-laptop"></i> <span class="nav-label">栅格</span></a>
                    </li>
                    <li>
                        <a href="list.jsp#"><i class="fa fa-table"></i> <span class="nav-label">表格</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="table_basic.html">基本表格</a>
                            </li>
                            <li><a href="table_data_tables.html">数据表格(DataTables)</a>
                            </li>
                            <li><a href="table_jqgrid.html">jqGrid</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="list.jsp#"><i class="fa fa-picture-o"></i> <span class="nav-label">图库</span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="basic_gallery.html">基本图库</a>
                            </li>
                            <li><a href="carousel.html">图片切换</a>
                            </li>

                        </ul>
                    </li>
                    <li>
                        <a href="list.jsp#"><i class="fa fa-sitemap"></i> <span class="nav-label">菜单 </span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="list.jsp#">三级菜单 <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="list.jsp#">三级菜单 01</a>
                                    </li>
                                    <li>
                                        <a href="list.jsp#">三级菜单 01</a>
                                    </li>
                                    <li>
                                        <a href="list.jsp#">三级菜单 01</a>
                                    </li>

                                </ul>
                            </li>
                            <li><a href="list.jsp#">二级菜单</a>
                            </li>
                            <li>
                                <a href="list.jsp#">二级菜单</a>
                            </li>
                            <li>
                                <a href="list.jsp#">二级菜单</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="webim.html"><i class="fa fa-comments"></i> <span class="nav-label">即时通讯</span><span class="label label-danger pull-right">New</span></a>
                    </li>
                    <li>
                        <a href="css_animation.html"><i class="fa fa-magic"></i> <span class="nav-label">CSS动画</span></a>
                    </li>
                    <li>
                        <a href="list.jsp#"><i class="fa fa-cutlery"></i> <span class="nav-label">工具 </span><span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li><a href="form_builder.html">表单构建器</a>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>
        </nav>

        <div id="page-wrapper" class="gray-bg dashbard-1">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0;min-height:inherit;">
                    <div class="navbar-header">
                        <a class="navbar-minimalize minimalize-styl-2 btn btn-primary " href="javascript:;" style="padding: 0px 12px;margin: 7px 5px 7px 8px;"><i class="fa fa-bars"></i> </a>
                    </div>
                    <div class="col-lg-10" style="padding:8px 14px;">
                        <ol class="breadcrumb" style="background-color: #f5f5f5;">
                            <li>
                                <i class="fa fa-home"></i> <a href="index.jsp">主页</a>
                            </li>
                            <li>
                                <a>表格</a>
                            </li>
                            <li>
                                <strong>数据表格</strong>
                            </li>
                        </ol>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">

                    </ul>

                </nav>
            </div>
            <div class="wrapper wrapper-content animated fadeInRight" style="padding-left: 0px;">
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
            <div class="footer">
                <div class="pull-right">
                    By：<a href="http://www.zi-han.net" target="_blank">zihan's blog</a>
                </div>
                <div>
                    <strong>Copyright</strong> H+ &copy; 2014
                </div>
            </div>

        </div>
    </div>


    </div>

    <!-- Mainly scripts -->
    <script src="${ctxStatic}/hui/js/jquery-2.1.1.min.js"></script>
    <script src="${ctxStatic}/hui/js/bootstrap.min.js?v=3.4.0"></script>
    <script src="${ctxStatic}/hui/js/plugins/metisMenu/jquery.metisMenu.js"></script>
    <script src="${ctxStatic}/hui/js/plugins/slimscroll/jquery.slimscroll.min.js"></script>

    <script src="${ctxStatic}/hui/js/plugins/jeditable/jquery.jeditable.js"></script>

    <!-- Data Tables -->
    <script src="${ctxStatic}/hui/js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="${ctxStatic}/hui/js/plugins/dataTables/dataTables.bootstrap.js"></script>

    <!-- Custom and plugin javascript -->
    <script src="${ctxStatic}/hui/js/hplus.js?v=2.2.0"></script>
    <script src="${ctxStatic}/hui/js/plugins/pace/pace.min.js"></script>

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
                }
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

    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script><!--统计代码，可删除-->

</body>

</html>
