<%@page import="com.java.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%

	MemberDAO dao = new MemberDAO();
	int n=0;

	String id = request.getParameter("id");


	n = dao.deleteMember(id);

	if(n>0){
		response.sendRedirect("/JSP/member/memberList.jsp");
	
	}
	else
		out.print("<Script> alert('ȸ������ ������ �����Ͽ����ϴ�'); </Script>");
%>
</body>
</html>