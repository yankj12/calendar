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
</body>
</html>
