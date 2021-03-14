<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="member.MemberDAO"%>
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
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	
		request.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String birth = request.getParameter("birth").toString();
		String gender = request.getParameter("gender");
		String neutralization = request.getParameter("neutralization");
		String contact = request.getParameter("contact");
	
		MemberDAO.getInstance().insert(name, age, birth, gender, neutralization, contact);
	%>

		<script>
			alert("welcome!");
			location.href="20_member_list.jsp";
		</script>


</body>
</html>