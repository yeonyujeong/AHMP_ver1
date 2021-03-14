<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String contact = request.getParameter("contact");
		
		boolean isValidMember = MemberDAO.getInstance().isValidMember(name, contact);
	
		if(isValidMember){
			
			MemberDAO.getInstance().delete(name);
			
	%>
		<script>
			alert("Delete Succeed!");
			location.href="20_member_list.jsp";
		</script>
	<% 			
		}else{
	%>
		<script>
			alert("check member's name and contact!");
			history.go(-1);
		</script>
	<%		
		}
	%>
</body>
</html>