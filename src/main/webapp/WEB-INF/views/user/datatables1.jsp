<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>datatables 简单实现</title>
    <link href="${ctxStatic}/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="${ctxStatic}/js/plugins/datatables/css/css3/animate.css" rel="stylesheet" type="text/css" />
    <link href="${ctxStatic}/js/plugins/hyfonts/hyicons.css" rel="stylesheet" type="text/css" />
    <link href="${ctxStatic}/js/plugins/datatables/css/admin/style.css" rel="stylesheet" type="text/css" />
    <link href="${ctxStatic}/js/plugins/datatables/css/admin/jquery.dataTables.css" rel="stylesheet" type="text/css" />
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
                	<!-- search star -->
                	<div class="form-horizontal clearfix">                		
	                     <div class="col-lg-4 col-sm-3 pl0">
		                     <div class="form-group">
		                           <div class="col-lg-8 col-sm-7">
		                                 <select class="input-sm form-control input-s-sm inline">
                                            <option value="0">请选择</option>
                                            <option value="1">冻结</option>
                                            <option value="2">开放</option>
                                            <option value="3">审核</option>
                                        </select>
		                           </div>
		                     </div>
	                     </div>
	                     <div class="col-lg-4 col-sm-5">
		                     <div class="form-group">
		                           <label class="col-lg-3  col-sm-3 control-label">日期：</label>
		                           <div class="col-lg-8 col-sm-8 input-group date">
		                           		<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
		                                 <input type="email" placeholder="2014-11-17" class="input-sm form-control">
		                                 <span class="input-group-addon">到</span>
		                                 <input type="text" class="input-sm form-control" name="end" value="" placeholder="2014-11-17">
		                           </div>
		                     </div>
	                     </div>
	                     <div class="col-lg-4 col-sm-4">
		                	<div class="form-group">
		                           <div class="col-lg-12 col-sm-12 input-group">
		                                 <input type="email" placeholder="请输入关键字" class="input-sm form-control">
		                                 <span class="input-group-btn">
                                        <button type="button" class="btn btn-sm btn-primary"> 搜索</button> </span>
		                           </div>
		                     </div>
	                     </div>
                     </div>
                     <!-- search end -->
                	<table id="example" class="table table-striped table-bordered table-hover dataTables-example dataTable" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th><input type="checkbox" class="ckb l-checkbox" title="全选/反选"></th>
                                <th>编号</th>
                                <th>登录名</th>
                                <th>姓名</th>
                                <th>邮箱</th>
                                <th>最后登陆时间</th>
                                <th>是否禁止</th>
                                <th>创建时间</th>
                                <th>备注信息</th>
                                <th>操作</th>
                            </tr>
                        </thead>
                	  </table>
                </div>
                
			</div>
		</div>
	</div>
	<!-- table end -->
</body>
</html>
<script type="text/javascript" src="${ctxStatic}/js/jquery.min.js"></script>
<script type="text/javascript" src="${ctxStatic}/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctxStatic}/js/plugins/datatables/js/admin/jquery.dataTables.js"></script>
<script type="text/javascript" src="${ctxStatic}/js/plugins/datatables/js/admin/dataTables.bootstrap.js"></script>
<script type="text/javascript" src="${ctxStatic}/js/plugins/datatables/js/admin/colResizable-1.5.min.js"></script>
<script type="text/javascript" src="${ctxStatic}/js/moment.min.js"></script>
<script type="text/javascript">
	$(function(){
            var table = $("#example").DataTable({
                "ordering": false,//是否启用Datatables排序
                "searching": false,//是否开启插件搜索
                "lengthMenu": [ 5,10, 25, 50, 75, 100 ],//改变每页显示条数列表的选项
                "processing" : true,//显示加载信息
                "serverSide" : true,//服务器模式
                //"autoWidth" : false,//自动宽度
                "stateSave" : true,//保持当前状态
                "pagingType":   "full_numbers",
                "paging": true,//显示分页
                "pageLength" : 5,//每页记录数
                "displayStart" : 0,
                "deferRender": true,//延迟渲染可以提高Datatables的加载速度
                "dom": 'rt<"bottom"iflp<"clear">>',//将lengthMenu 选项框移动到分页下
                "ajax": "${ctx}/user/list",
                "columns" : [{
                    data:   "chk",
                    render: function ( data, type, row ) {
                        if ( type === 'display' ) {
                            return '<input type="checkbox" class="ckb l-checkbox" value="'+row.id+'">';
                        }
                        return data;
                    },
                    className: "l-text-center",
                    "width": "4%"
                }
                ,{
                    "data" : "id",
                    "defaultContent" : "",
                    "orderable": false,
                    "className":"l-text-center",//给单元格添加自定义样式
                    "width": "5%"
                }, {
                    "data" : "loginName",
                    "defaultContent" : "",
                    "orderable": false,
                    "className":"l-text-center",
                    "width": "10%"
                }, {
                    "data" : "name",
                    "defaultContent" : "",
                    "orderable": false,
                    "className":"l-text-center",
                    "width": "10%"

                }, {
                    "data" : "email",
                    "defaultContent" : "",
                    "orderable": false,
                    "className":"l-text-center",
                    "width": "10%"
                }, {
                    "data" : "loginDate",
                    "defaultContent" : "",
                    "orderable": false,
                    "className":"l-text-center",
                    "width": "10%",
                    "render":function(data,type,full,meta){
                            return ''+ moment(data).format('YYYY-MM-DD HH:mm:ss')+'';
                    }
                }, {
                    "data" : "loginFlag",
                    "defaultContent" : "",
                    "orderable": false,
                    "className":"l-text-center",
                    "render": function ( data, type, full, meta ) {
                        return ''+setLoginFlag(data)+'';
                    },
                    "width": "10%"
                }, {
                    "data" : "createDate",
                    "defaultContent" : "",
                    "orderable": false,
                    "className":"l-text-center",
                    "width": "10%",
                    "render":function(data,type,full,meta){
                        return ''+ moment(data).format('YYYY-MM-DD HH:mm:ss')+'';
                    }
                }, {
                    "data" : "remarks",
                    "defaultContent" : "",
                    "orderable": false,
                    "className":"l-text-center",
                    "width": "10%"
                },{
                    data:   "operate",
                    render: function ( data, type, row ) {
                        if ( type === 'display' ) {
                            return '<a href="javascript:;" class="btn btn-primary btn-xs p310" id="edit" data-id="'+row.id+'"><i class="im-pencil2"></i> 编辑</a>' +
                                    '&nbsp;&nbsp;<a href="javascript:;" class="btn btn-primary btn-xs p310" id="delete" data-id="'+row.id+'"><i class="im-pencil2"></i> 删除</a>' +
                                    '&nbsp;&nbsp;<a href="javascript:;" class="btn btn-primary btn-xs p310" id="detail" data-id="'+row.id+'"><i class="im-pencil2"></i> 查看</a>';

                        }
                        return data;
                    },
                    className: "l-text-center",
                    "width": "15%"
                }],
			"language": {
                 "processing": "玩命加载中...",
				"lengthMenu": "显示 _MENU_ 项结果",
				"zeroRecords": "没有匹配结果",
				"info": "显示第 _START_ 至 _END_ 项结果，共 _TOTAL_ 项",
				"infoEmpty": "显示第 0 至 0 项结果，共 0 项",
				"infoFiltered": "(由 _MAX_ 项结果过滤)",
				"infoPostFix": "",
				"url": "",
				"paginate": {
					"first":    "首页",
					"previous": "上一页",
					"next":     "下一页",
					"last":     "末页"
				}
           }
		});

        //单击表头复选框
        $('#example').on( 'click', 'input[type="checkbox"]', function () {
            var $this = $(this);
            var $tbody = $this.parents("thead").next();
            $tbody.children().each(function(){//tr
                var $tr_this = $(this);
                var $chk = $($tr_this.find("td")[0]).children();
                if(!$chk.prop("checked")){
                    $chk.prop("checked",true);
                }else{
                    $chk.prop("checked",false);
                }
            });
        });

        //表格内编辑按钮
        $("#example").on('click',"#edit",function(){
           alert($(this).data("id"));
        });
        //表格内删除按钮
        $("#example").on('click',"#delete",function(){
            alert($(this).data("id"));
        });
        //表格内查看按钮
        $("#example").on('click',"#detail",function(){
            alert($(this).data("id"));
        });

        //刷新
        $("#refresh").on('click',function(){
            alert(0);
        });

		//使用col插件实现表格头宽度拖拽
		$(".table").colResizable();
	});

    function setLoginFlag(a){
        if(a){return "<span class='text-danger'><i class='fa fa-level-down'></i> 禁止</span>";}
        else{return "<span class='text-navy'><i class='fa fa-level-up'></i> 启用</span>";}
    }

</script>

