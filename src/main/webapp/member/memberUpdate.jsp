<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>ȸ�� ���� ����(member ���̺�)</h1>
	
	<% String id = request.getParameter("id");%>
	
	<form action="/JSP/member/UpdateProc.jsp" method="post">
		����� ID : <input type="text" name = "id" value="<%=id %>" readonly><br>
		����� PWD:<input type="text" name = "pwd"><br><br>
		<input type="submit" value="�߰�">&nbsp;&nbsp;<input type="reset" value="�ʱ�ȭ">
	</form>
	<br><br>
	<a href="./index.jsp">ó��ȭ��</a>
</body>
</html>