package member;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class MemberDAO {

	private MemberDAO() {}
	private static MemberDAO instance = new MemberDAO();
	public static MemberDAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public Connection getConnection() {
		
		String Member_dbUrl = "jdbc:mysql://localhost:3306/MEMBER_LIST?serverTimezone=UTC";
		String dbId  = "root";
		String dbPwd = "1234";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(Member_dbUrl , dbId , dbPwd);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null)    try {rs.close();}    catch (SQLException e) {e.printStackTrace();}
			if(pstmt != null) try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			if(conn != null)  try {conn.close();}  catch (SQLException e) {e.printStackTrace();}
		}		
		return conn;
	}
	
	public boolean isValidMember(String name , String contact) {
		
		boolean isValidMember = false;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from member where name=? and contact=?");
			pstmt.setString(1, name);
			pstmt.setString(2, contact);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				isValidMember = true;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null)    try {rs.close();}    catch (SQLException e) {e.printStackTrace();}
			if(pstmt != null) try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			if(conn != null)  try {conn.close();}  catch (SQLException e) {e.printStackTrace();}
		}
		
		
		return isValidMember;
	}
	
	
	
	public void insert(String name, String age, String birth, String gender, String neutralization, String contact) {

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("insert into member values(?,?,?,?,?,?)");
			pstmt.setString(1, name);
			pstmt.setString(2, age);
			pstmt.setString(3, birth);
			pstmt.setString(4, gender);
			pstmt.setString(5, neutralization);
			pstmt.setString(6, contact);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(pstmt != null) try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			if(conn != null)  try {conn.close();}  catch (SQLException e) {e.printStackTrace();}
		}
		
	}
	
	public void delete(String name) {
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("delete from member where name=?");
			pstmt.setString(1, name);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null)    try {rs.close();}    catch (SQLException e) {e.printStackTrace();}
			if(pstmt != null) try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			if(conn != null)  try {conn.close();}  catch (SQLException e) {e.printStackTrace();}
		}
		
	}
	
	
	public void update(String name, String age, String birth, String gender, String neutralization, String contact) {
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("update member set age=? , birth=? , gender=? , neutralization=? , contact=? where name=?");
			pstmt.setString(1, age);
			pstmt.setString(2, birth);
			pstmt.setString(3, gender);
			pstmt.setString(4, neutralization);
			pstmt.setString(5, contact);
			pstmt.setString(6, name);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null)    try {rs.close();}    catch (SQLException e) {e.printStackTrace();}
			if(pstmt != null) try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			if(conn != null)  try {conn.close();}  catch (SQLException e) {e.printStackTrace();}
		}
		
	}
	
	
	
}
