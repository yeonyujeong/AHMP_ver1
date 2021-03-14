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
	<form method="post" action="22_member_insertPro.jsp">
		<div id="main">
			<h1 align="center">&#10024; Add Member</h1><br>
				<div align="center">
						NAME : <input type="text" name="name"><br><br>
						AGE : <input type="text" name="age"><br><br>
						BIRTH : <input type="date" name="birth" ><br><br>
						GENDER : 
						<input type="radio" name="gender" value="MALE"> MALE
						<input type="radio" name="gender" value="FEMALE" checked> FEMAIL<br><br>
						NEUTRALIZATION : 
						<input type="radio" name="neutralization" value="YES"> YES
						<input type="radio" name="neutralization" value="NO" checked> NO<br><br>
						CONTACT : 
						<input type="tel" name="contact" placeholder="숫자만 입력해주세요"><br><br><br>
					 <input type="submit" value="Add" >&nbsp;
					 <input type="reset" value="Reset" >
		         </div>
		</div>
	</form>
</body>
</html>