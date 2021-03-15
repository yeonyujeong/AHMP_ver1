package manager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ManagerDAO {

	
		
	private ManagerDAO() {}
	private static ManagerDAO instance = new ManagerDAO();
	public static ManagerDAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public Connection getConnection() {
		
		String Manager_dbUrl = "jdbc:mysql://localhost:3306/MANAGER_LIST?serverTimezone=UTC";
		String dbId  = "root";
		String dbPwd = "1234";
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(Manager_dbUrl , dbId , dbPwd);
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return conn;
	}
	
	//login DAO
	public boolean login(String id , String pw) {
		
		boolean isValidManager = false;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from manager where id=? and pw=?");
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				isValidManager = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null)    try {rs.close();}    catch (SQLException e) {e.printStackTrace();}
			if(pstmt != null) try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			if(conn != null)  try {conn.close();}  catch (SQLException e) {e.printStackTrace();}
		}
		
		return isValidManager;
	}
	
	public boolean insert(String id, String pw, String name) {
		
		boolean isIdDuple = true;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select id from manager where id=?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				isIdDuple = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null)    try {rs.close();}    catch (SQLException e) {e.printStackTrace();}
			if(pstmt != null) try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			if(conn != null)  try {conn.close();}  catch (SQLException e) {e.printStackTrace();}
		}
		
		if(isIdDuple) {
			try {
				conn = getConnection();
				pstmt = conn.prepareStatement("insert into manager values(?,?,?,now())");
				pstmt.setString(1, id);
				pstmt.setString(2, pw);
				pstmt.setString(3, name);
				pstmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return isIdDuple;
	}

	public void update(String id, String pw, String name) {
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("update manager set pw=? , name=? where id=?");
			pstmt.setString(1, pw);
			pstmt.setString(2, name);
			pstmt.setString(3, id);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void delete(String id) {
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("delete from manager where id=?");
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null)    try {rs.close();}    catch (SQLException e) {e.printStackTrace();}
			if(pstmt != null) try {pstmt.close();} catch (SQLException e) {e.printStackTrace();}
			if(conn != null)  try {conn.close();}  catch (SQLException e) {e.printStackTrace();}
		}
	}


}
