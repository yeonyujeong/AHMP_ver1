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
		<form method="post" action="17_manager_updatePro.jsp">
		<div id="main">
			<h1 align="center">&#10024; Update Manager</h1><br>
				<div align="center">
						ID : <input type="text" name="id"><br><br>
						PW : <input type="password" name="pw"><br><br>
					 <input type="submit" value="Check" >&nbsp;
					 <input type="reset" value="Reset" >
		         </div>
		</div>
	</form>

</body>
</html>