<%@page import="java.text.DecimalFormat"%>
<%@page import="member.MemberDAO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member List</title>
<style>
	#main{
		position:realtive;
		margin:10%;
		align:center;	
	}	
	table, th, td {
		border:1px solid black;
		border-collapse: collapse;
	}
	 th, td {
		padding:3px;
	}
	th{
		background-color: #dddddd;
	}

</style>
</head>
<body>
	<%
	
		request.setCharacterEncoding("utf-8");
	
		DecimalFormat phoneFmt = new DecimalFormat("###-###-####");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			conn = MemberDAO.getInstance().getConnection();
			pstmt = conn.prepareStatement("select * from member");
			rs = pstmt.executeQuery();
	%>
		<div id="main">
		<h2 align="center">&#128218; Member List </h2><br>
		<table width="70%" align="center">
			<tr align="center">
				<th>NAME</th>
				<th>AGE</th>
				<th>BIRTH</th>
				<th>GENDER</th>
				<th>NEUTRALIZATION</th>
				<th>CONTACT</th>
			</tr>
	<%
	
		while (rs.next()){
			String rName = rs.getString("name");
			String rAge = rs.getString("age");
			String rBirth = rs.getString("birth");
			String rGender = rs.getString("gender");
			String rNeutralization = rs.getString("neutralization");
			String rContact = rs.getString("contact");
			
	%>
			<tr align="center">
				<td><%=rName%></td>
				<td><%=rAge%></td>
				<td><%=rBirth%></td>
				<td><%=rGender%></td>
				<td><%=rNeutralization%></td>
				<td><%=rContact%></td>
			</tr>
	<%		
	
		}
	%>		
		</table>
		
		</div>
	<%		
		}catch(Exception e){
			e.printStackTrace();
		}finally {
			if (rs != null)    try {rs.close();} catch (Exception e){}
			if (pstmt != null) try {pstmt.close();} catch (Exception e){}
			if (conn != null)  try {conn.close();} catch (Exception e){}	
		}

	%>
	
	<div align="center">
		<input type="button" value="Main" onclick="location.href='12_manager_main.jsp'"> &nbsp;
		<input type="button" value="Add Member" onclick="location.href='21_member_insert.jsp'"> &nbsp;
		<input type="button" value="Delete Member" onclick="location.href='23_member_delete.jsp'">&nbsp;
		<input type="button" value="Update member" onclick="location.href='25_member_update.jsp'">
	</div>
	
</body>
</html>