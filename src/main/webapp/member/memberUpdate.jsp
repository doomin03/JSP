<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 정보 수정(member 테이블)</h1>
	
	<% String id = request.getParameter("id");%>
	
	<form action="/JSP/member/UpdateProc.jsp" method="post">
		사용자 ID : <input type="text" name = "id" value="<%=id %>" readonly><br>
		사용자 PWD:<input type="text" name = "pwd"><br><br>
		<input type="submit" value="추가">&nbsp;&nbsp;<input type="reset" value="초기화">
	</form>
	<br><br>
	<a href="./index.jsp">처음화면</a>
</body>
</html>