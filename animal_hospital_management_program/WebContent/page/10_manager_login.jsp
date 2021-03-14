<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<style>
	#main{
		position:realtive;
		margin:10%;
		align:center;
		
	}
	
</style>
</head>
<body>
	<form action="11_manager_loginPro.jsp">
		<div id="main">
			<fieldset>
				<div>
					<h1 align="center">Login </h1><br>
						<div align="center">
							 <label>I D : </label>
					         <input type="text" id="id" name="id"  placeholder="Enter id"><br><br>
					   		 <label>PW : </label>
					         <input type="password"  id="pw" name="pw" placeholder="Enter password"><br><br>
					         <input type="submit" value="Login">&nbsp;&nbsp;&nbsp;<input type="reset" value="reset">
					         <br><br>
				         </div>
				</div>
			</fieldset>
		</div>
	</form>
</body>
</html>