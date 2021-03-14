<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#main{
		position:realtive;
		margin:15%;
		align:center;		
	}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String birth = request.getParameter("birth").toString();
		String gender = request.getParameter("gender");
		String neutralization = request.getParameter("neutralization");
		String contact = request.getParameter("contact");
		
		MemberDAO.getInstance().update(name, age, birth, gender, neutralization, contact);
		
	%>
	<script>
		alert("Update!!");
		location.href="20_member_list.jsp";
	</script>
	