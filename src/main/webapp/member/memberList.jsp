<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.java.MemberDAO" %>
<%@ page import="common.jdbcUtil" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>ȸ�� ��� (member ���̺�)</h1>
	<table border="1">
		<tr>
			<th>�����ID</th>
		</tr>
		<%
			MemberDAO dao = new MemberDAO();
			ArrayList<String> list = dao.getMember();
			if(list.isEmpty()){
				out.print("<tr><td>ȸ�������� �����ϴ�</td></tr>");
			}
			else{
				for(String data : list){
		%>
					<tr>
						<td><%= data %></td>
					</tr>
		<%
				}
			}
		%>
	</table>
	<br>
	<br>
	<a href="./index.jsp">ó�� ȭ��</a>
</body>
</html>