<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#h01 {text-align: center;color: yellow;}
	#div01 {text-align: right;padding-right: 20px;}
</style>
</head>
<body>
	<h1 id="h01">CARE LAB</h1>
	<hr>
	<div id="div01">
		<a href="index">HOME</a>
		<% if(session.getAttribute("id")==null){%>
			<a href="login">회원정보</a>
			<a href="login">LOGIN</a>
		<% }else{%>
			<a href="member_info">회원정보</a>
			<a href="logout">LOGOUT</a>
		<% }%>
	</div>
	<hr>
</body>
</html>