<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#div05 {padding:3% 35%;}
	h2 {text-align: center;}
	h4 {text-align: center;}
</style>
</head>
<body>
<c:import url="../default/header.jsp" />
<div id="div05">
	<h2>회원정보</h2>
	<h4>아이디 : ${info.id }</h4>
	<h4>비밀번호 : ${info.pw }</h4>
	<h4>주소 : ${info.addr }</h4>
</div>

<c:import url="../default/footer.jsp" />
</body>
</html>