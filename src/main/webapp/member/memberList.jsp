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
			<th>����</th>
			<th>����</th>
			
		</tr>
		<%
			MemberDAO dao = new MemberDAO();
			ArrayList<String> list = dao.getMember();
			String updateLink = "memberUpdate.jsp?id=";
			String deleteLink = "/JSP/delete?id=";
			if(list.isEmpty()){
				out.print("<tr><td>ȸ�������� �����ϴ�</td></tr>");
			}
			else{
				for(String data : list){
		%>
					<tr>
						<td><%= data %></td>
						<td> <a href="<%= updateLink + data %>">����</a></td>
						<td> <a href="<%= deleteLink + data %>">����</a></td>
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