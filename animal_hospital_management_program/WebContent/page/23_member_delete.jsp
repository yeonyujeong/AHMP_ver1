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
	%>
	<form method="post" action="24_member_deletePro.jsp">
		<div id="main">
			<h1 align="center">&#10060; Delete Member</h1><br>
				<div align="center">
						NAME : <input type="text" name="name"><br><br>
						CONTACT : <input type="text" name="contact"><br><br>
					 <input type="submit" value="Delete" >&nbsp;
					 <input type="reset" value="Reset" >
		         </div>
		</div>
	</form>
	
	
</body>
</html>