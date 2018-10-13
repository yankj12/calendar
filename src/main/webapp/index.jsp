<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8"></meta>
	<title>index</title>
	<link rel='stylesheet' href='${pageContext.request.contextPath}/fullcalendar/3.9.0/fullcalendar.css' />
	<script src='${pageContext.request.contextPath}/fullcalendar/3.9.0/lib/jquery.min.js'></script>
	<script src='${pageContext.request.contextPath}/fullcalendar/3.9.0/lib/moment.min.js'></script>
	<script src='${pageContext.request.contextPath}/fullcalendar/3.9.0/fullcalendar.js'></script>
	
	<!-- 引入easyui相关js和css -->
	<%-- <script src="${pageContext.request.contextPath}/easyui/jquery.min.js" type="text/javascript"></script> --%>
	<script src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js" type="text/javascript"></script>
	<link href="${pageContext.request.contextPath}/easyui/themes/default/easyui.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/easyui/themes/icon.css" rel="stylesheet" type="text/css" />
	
	<script src='${pageContext.request.contextPath}/index.js'></script>

	<style>
	
	  body {
	    margin: 40px 10px;
	    padding: 0;
	    font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
	    font-size: 14px;
	  }
	
	  #calendar {
	    max-width: 900px;
	    margin: 0 auto;
	  }
	
	</style>

</head>
<body>
	<div id='calendar'></div>
	
	<!-- 下面dlg是为了有新增事件界面 -->
	<div id="dlg" class="easyui-dialog" style="width:500px;height:300px;padding:0px 0px"
		closed="true" buttons="#dlg-buttons">
		<div title="Edit Event" style="padding:5px">
			<form id="fm" method="post" novalidate>
			<table cellpadding="5" style="width:100%;">
				<tr>
					<td><label>title</label></td>
					<td colspan="3">
						<input id="title_edit" name="title" class="easyui-textbox" value="" style="width:100%;"/>
						<label  id="label_after_title"></label>
					</td>
				</tr>
	
				<tr>
					<td><label>start day</label></td>
					<td>
						<input id="start_edit" name="start" class="easyui-datetimebox"/>
					</td>
					<td><label>end day</label></td>
					<td>
						<input id="end_edit" name="end" class="easyui-datetimebox"/>
					</td>
				</tr>
				<tr>
					<td><label>remark</label></td>
					<td colspan="3">
						<input id="remark_edit" name="remark" class="easyui-textbox" data-options="multiline:true" value="" style="width:100%;height:60px"/>
					</td>
				</tr>
				
			</table>	
			</form>
		</div>
			
	</div>
	<!-- 下面dlg-buttons是为了让新增用户页面有保存和取消按钮 -->
	<div id="dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveEvent()" style="width:90px">Save</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">Cancle</a>
	</div>
	
</body>
</html>
