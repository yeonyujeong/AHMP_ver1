<%@page import="manager.ManagerDAO"%>
<%@page import="manager.ManagerDTO"%>
<%@page import="java.sql.Connection"%>
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
		String name = request.getParameter("name");
	
		boolean isIdDuple = ManagerDAO.getInstance().insert(id, pw, name);
		
		if(isIdDuple){
	%>
		<script>
			alert("welcome!");
			location.href="12_manager_main.jsp";
		</script>
	<%
		} else{
	%>
		<script>
		alert("This ID is already );
		location.href="12_manager_main.jsp";
		</script>
		
	<%		
		}
	%>


</body>
</html>