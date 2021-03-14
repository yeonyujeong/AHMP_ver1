<%@page import="member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		String contact = request.getParameter("contact");
		boolean isValidMember = MemberDAO.getInstance().isValidMember(name, contact);
		
		if(isValidMember){
	%>

		<form method="post" action="27_member_updatePro2.jsp">
		<div id="main">
			<h1 align="center">&#10024; Update Member</h1><br>
				<div align="center">
						NAME : <input type="text" name="id" value="<%=name %>" readonly><br><br>
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
					 <input type="submit" value="Update" >&nbsp;
					 <input type="reset" value="Reset" >
		         </div>
		</div>
	</form>
	<%
		}else{
	%>
			<script>
				alert("check member's name and contact!");
				location.href="20_member_list.jsp";	
			</script>
	<%			
		}
	%>

</body>
</html>