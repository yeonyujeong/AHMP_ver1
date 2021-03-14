<%@page import="manager.ManagerDAO"%>
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
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		boolean isValidManager = ManagerDAO.getInstance().login(id,pw);
		
		if(isValidManager){
			session.setAttribute("id" , id);
			session.setMaxInactiveInterval(60*10);
			response.sendRedirect("12_manager_main.jsp");
		}
		else{
	%>
		<script>
			alert("check your id and password!");
			history.go(-1);
		</script>
	<%		
		}
	
	%>


</body>
</html>