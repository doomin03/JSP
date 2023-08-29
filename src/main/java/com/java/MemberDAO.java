package com.java;
import common.jdbcUtil;
import java.util.ArrayList;
import java.sql.*;
public class MemberDAO {
	
	public  ArrayList<String> getMember() {
		ArrayList<String>list = new ArrayList<>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		ResultSet rs = null;
		
		String sql = "select userid from member";
		
		conn = jdbcUtil.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(rs.getString("userid"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			jdbcUtil.close(conn, pstmt ,rs);
		}
		
		return list;
	}
	
	public int insertmember(String userId, String userPwd) {
		int n = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into member values(?,?)";
		
		conn = jdbcUtil.getConnection();
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			n = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			jdbcUtil.close(conn, pstmt);
		}
		
		return n;
	}
	
}
