<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#div04 {padding: 3% 20%;}
#h02 {text-align: left;}
form {text-align: right;}
</style>
</head>
<body>
<c:import url="../default/header.jsp" />
<div id="div04">
	<h1 id="h02">로그인 페이지 입니다</h1>
	<form action="login_chk" method="post">
		<input type="text" name="id" placeholder="id"><br>
		<input type="text" name="pw" placeholder="pw"><br>
		<a href="register">회원가입</a>
		<input type="submit" value="로그인">
	</form>
</div>

<c:import url="../default/footer.jsp" />
</body>
</html>