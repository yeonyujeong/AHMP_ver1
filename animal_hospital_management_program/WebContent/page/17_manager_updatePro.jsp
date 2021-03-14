<%@page import="manager.ManagerDAO"%>
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
	
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		boolean isValidManager = ManagerDAO.getInstance().login(id, pw);
		if(isValidManager){
	%>
		<form method="post" action="17_manager_updatePro2.jsp">
		<div id="main">
			<h1 align="center">&#10024; Update Manager</h1><br>
				<div align="center">
						ID : <input type="text" name="id" value="<%=id %>" readonly><br><br>
						PW : <input type="password" name="pw"><br><br>
						NAME : <input type="text" name="name"><br><br>
					 <input type="submit" value="Update" >&nbsp;
					 <input type="reset" value="Reset" >
		         </div>
		</div>
		</form>
		
	<%		
		}else{
	%>
		<script>
			alert("check your id and password!!");
			location.href="16_manager_update.jsp";	
		</script>
	<%		
		}
	%>
	
	
