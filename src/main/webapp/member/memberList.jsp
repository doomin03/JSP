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
	<h1>회원 목록 (member 테이블)</h1>
	<table border="1">
		<tr>
			<th>사용자ID</th>
			<th>수정</th>
			<th>삭제</th>
			
		</tr>
		<%
			MemberDAO dao = new MemberDAO();
			ArrayList<String> list = dao.getMember();
			String updateLink = "memberUpdate.jsp?id=";
			String deleteLink = "/JSP/delete?id=";
			if(list.isEmpty()){
				out.print("<tr><td>회원정보가 없습니다</td></tr>");
			}
			else{
				for(String data : list){
		%>
					<tr>
						<td><%= data %></td>
						<td> <a href="<%= updateLink + data %>">수정</a></td>
						<td> <a href="<%= deleteLink + data %>">삭제</a></td>
					</tr>
		<%
				}
			}
		%>
	</table>
	<br>
	<br>
	<a href="./index.jsp">처음 화면</a>
</body>
</html>