<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css"></style>
</head>
<body>
<c:import url="../default/header.jsp" />
 <form action="insert" method="post">
 	<input type="text" name="id"><br>
 	<input type="text" name="pw"><br>
 	<input type="text" name="addr"><br>
 	<input type="submit" value="회원가입">
 </form>
<c:import url="../default/footer.jsp" />
</body>
</html>