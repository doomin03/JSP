<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 정보 등록(member 테이블)</h1>
	
	<form action="/Day0829/member/insertProc.jsp" method="post">
		사용자 ID : <input type="text" name = "id"><br>
		사용자 PWD:<input type="text" name = "pwd"><br><br>
		<input type="submit" value="추가">&nbsp;&nbsp;<input type="reset" value="초기화">
	</form>
</body>
</html>