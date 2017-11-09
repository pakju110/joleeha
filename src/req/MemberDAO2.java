package req;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import file_p1.MemberVO;

public class MemberDAO2 {

	
	String url ="localhost:1521:xe";
	String id = "java";
	String pw = "java";
	
	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public MemberDAO2() {
		// TODO Auto-generated constructor stub
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@"+url, id, pw );
			
			stmt = con.createStatement();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<MemberVO> list()
	{
		ArrayList<MemberVO> res =new ArrayList<>();

		try {
			sql = "select * from memeber";
			rs = stmt.executeQuery(sql);
			
			while(rs.next())
			{
				MemberVO vo = new MemberVO();
				
				vo.setId(rs.getString("id"));
				vo.setEmail(rs.getString("email"));
				
				res.add(vo);
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	
	public MemberVO detail(String id)
	{
		MemberVO res =null;

		try {
			sql = "select * from memeber where id = '"+id+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				res = new MemberVO();
				
				res.setId(rs.getString("id"));
				res.setEmail(rs.getString("email"));
				res.setGender(rs.getString("gender"));
				res.setHobby(rs.getString("hobby"));
				res.setContent(rs.getString("content"));
				res.setRegDate(rs.getTimestamp("reg_date"));
				res.setBirth(rs.getDate("birth"));
				res.setGrade(rs.getInt("grade"));
				
				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	public void insert(MemberVO mem )
	{
		try {
			
			sql = "insert into memeber (id, pw, gender, hobby, email, content, birth, reg_date, grade) values " + 
					"('"+mem.getId()+"','"+
					mem.getPw()+"','"+
					mem.getGender()+"','"+
					mem.getHobby()+"','"+
					mem.getEmail()+"','"+
					mem.getContent()+"','"+
					mem.strBirth()+"','"+
					mem.strRegDate()+"', "+
					
					mem.getGrade()+")";
			System.out.println(sql);
			System.out.println(stmt.executeUpdate(sql));
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	
	public boolean delete(MemberVO mem )
	{
		boolean res = false;
		try {
			
			sql = "delete from memeber where id='" 
			+ mem.getId()
			+"' and pw = '"+ mem.getPw()+"'";
		
			System.out.println(sql);
			if(stmt.executeUpdate(sql)>0)
				res = true;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	
	public boolean modify(MemberVO mem )
	{
		boolean res = false;
		try {
			
			sql = "update memeber set "
				+" gender = '"+ mem.getGender()+"',"
				+" hobby = '"+ 	mem.getHobby()+"',"
				+" email = '"+ 	mem.getEmail()+"',"
				+" content = '"+ 	mem.getContent()+"'"
				+ " where id='"	+ mem.getId()
			+"' and pw = '"+ mem.getPw()+"'";
		
			System.out.println(sql);
			if(stmt.executeUpdate(sql)>0)
				res = true;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	
	
	
	public void close()
	{
		try { if(rs!=null) rs.close();} catch (SQLException e) {}
		try { if(stmt!=null) stmt.close();} catch (SQLException e) {}
		try { if(con!=null)	con.close();} catch (SQLException e) { }
	}
	
}
