<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="manager.ManagerDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Manager List</title>
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
	
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			conn = ManagerDAO.getInstance().getConnection();
			pstmt = conn.prepareStatement("select * from manager");
			rs = pstmt.executeQuery();
	%>
		<div id="main">
		<h2 align="center">&#128218; Manager List </h2><br>
		<table width="70%" align="center">
			<tr align="center">
				<th>ID</th>
				<th>PASSWORD</th>
				<th>NAME</th>
				<th>JOINDATE</th>
			</tr>
	<%
	
		while (rs.next()){
			String rId = rs.getString("id");
			String rPw = rs.getString("pw");
			String rName = rs.getString("name");
			String rDate = sdf.format(rs.getTimestamp("joindate"));
			
	%>
			<tr align="center">
				<td><%=rId%></td>
				<td><%=rPw%></td>
				<td><%=rName%></td>
				<td><%=rDate%></td>
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
		<input type="button" value="Add Manager" onclick="location.href='15_manager_insert.jsp'"> &nbsp;
		<input type="button" value="Delete Manager" onclick="location.href='18_manager_delete.jsp'">&nbsp;
		<input type="button" value="Update Manager" onclick="location.href='16_manager_update.jsp'">
	</div>
	
</body>
</html>