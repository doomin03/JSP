<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.java.MemberDAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String id,pwd;
	MemberDAO dao = new MemberDAO();
	int n=0;
	
	id = request.getParameter("id");
	pwd = request.getParameter("pwd");
	
	n = dao.updateMember(id, pwd);
	
	if(n>0){
		response.sendRedirect("/JSP/member/memberList.jsp");
		
	}
	else
		out.print("<Script> history.back() </Script>");
	%>
</body>
</html>