<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MANAGER_MAIN</title>
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
		String id = (String)session.getAttribute("id");
	%>
	
		<div id="main">
			<h1 align="center">	&#127880; Manager : <%=id %> </h1><br>
				<div align="center">
					 <input type="button" value="Manager List" onclick="location.href='14_manager_list.jsp'">&nbsp;
					 <input type="button" value="Member List" onclick="location.href='20_member_list.jsp'">&nbsp;
					 <input type="button" value="Log out" onclick="location.href='13_manager_logout.jsp'">&nbsp;
			         <br><br>
		         </div>
		</div>
	

</body>
</html>