package dbcp_p;

import java.io.File;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {


	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public MemberDAO() {
		// TODO Auto-generated constructor stub
		
		try {
			Context init=new InitialContext();
			Context env = (Context)init.lookup("java:/comp/env");
			DataSource ds = (DataSource)env.lookup("jdbc/OracleDB");
			con = ds.getConnection();
		
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<MemberVO> list()
	{
		ArrayList<MemberVO> res =new ArrayList<>();

		try {
			sql = "select * from member";
			stmt=con.prepareStatement(sql);
			rs = stmt.executeQuery();
			
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
	
	public ArrayList<MemberVO> list2(){
		ArrayList<MemberVO> res =new ArrayList<>();
		try {
			sql = "select * from member";
			stmt=con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()){
				MemberVO vo = new MemberVO();
				vo.setId(rs.getString("id"));
				vo.setPw(rs.getString("pw"));
				vo.setName(rs.getString("name"));
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
	
	
	
	public MemberVO detail(String id){
		MemberVO res =null;
		try {
			sql = "select * from member where id = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			if(rs.next()){
				res = new MemberVO();
				res.setId(rs.getString("id"));
				res.setName(rs.getString("name"));
				res.setEmail(rs.getString("email"));
				res.setImg(rs.getString("img"));
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
	
	public MemberVO detail2(String img){
		MemberVO res =null;
		try {
			sql = "select * from member where img = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, img);
			rs = stmt.executeQuery();
			if(rs.next()){
				res = new MemberVO();
				res.setId(rs.getString("id"));
				res.setName(rs.getString("name"));
				res.setEmail(rs.getString("email"));
				res.setImg(rs.getString("img"));
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
			
			sql = "insert into member (id, pw, name, gender, hobby,img, email, content, birth, reg_date, grade) values " + 
				"(?,?,?,?,?,?,?,?,?,sysdate,?)";
			System.out.println(sql);
			stmt = con.prepareStatement(sql);
			stmt.setString(1, mem.getId());
			stmt.setString(2, mem.getPw());
			stmt.setString(3, mem.getName());
			stmt.setString(4,mem.getGender() );
			stmt.setString(5, mem.getHobby());
			stmt.setString(6, mem.getImg());
			stmt.setString(7, mem.getEmail());
			stmt.setString(8, mem.getContent());
			stmt.setString(9,mem.strBirth());
			stmt.setInt(10,mem.getGrade());
			
			stmt.executeQuery();
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
			
			sql = "delete from member where id=? and pw=?";
			
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, mem.getId());
			stmt.setString(2, mem.getPw());
			
			
			if(stmt.executeUpdate()>0)
				res = true;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
		
	public boolean delimg(MemberVO mem){
		boolean res =false;
		try {
			sql = "select img from member where id = ? and pw=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, mem.getId());
			stmt.setString(2, mem.getPw());
			rs = stmt.executeQuery();
			if(rs.next()){
				String s = "E:/webWork/jspProj/WebContent/test/selfie/"+rs.getString("img");
				File file = new File(s);
			          if(file.delete()){
			                System.out.println("파일삭제 성공");
			            res=true;
			            }else{
			                System.out.println("파일삭제 실패");
			            }
			        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	
	public boolean modify(MemberVO mem ){
		boolean res = false;
		try {
			
			sql = "update member set gender = ?,"
				+" hobby = ?,"
				+" email = ?,"
				+" content = ?"
				+ " where id=? and pw=?";
		
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1,mem.getGender());
			stmt.setString(2,mem.getHobby());
			stmt.setString(3,mem.getEmail());
			stmt.setString(4,mem.getContent());
			stmt.setString(5,mem.getId());
			stmt.setString(6,mem.getPw());
			
			System.out.println(sql);
			if(stmt.executeUpdate()>0)
				res = true;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	public MemberVO findpw(String id)
	{
		MemberVO res =null;
		try {
			sql = "select pw from member where id = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				res = new MemberVO();
				res.setPw(rs.getString("pw"));
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}	
		return res;
	}
	
	public boolean findid(MemberVO mem){
		boolean res = false;
		try {
			sql = "select * from member where id=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, mem.getId());
			if(stmt.executeUpdate()>0)
				res = true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	public MemberVO findname(String id)
	{
		MemberVO res =null;
		try {
			sql = "select name from member where id = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				res = new MemberVO();
				res.setName(rs.getString("name"));
			}	
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}	
		return res;
	}
	
	public MemberVO login(MemberVO vo)
	{
		MemberVO res =null;
		try {
			sql = "select * from member where id = ? and pw = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getId());
			stmt.setString(2, vo.getPw());
			rs = stmt.executeQuery();
			if(rs.next())
			{
				res = new MemberVO();
				res.setId(rs.getString("id"));
				res.setName(rs.getString("name"));			
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	
	public void close(){
		try { if(rs!=null) rs.close();} catch (SQLException e) {}
		try { if(stmt!=null) stmt.close();} catch (SQLException e) {}
		try { if(con!=null)	con.close();} catch (SQLException e) { }
	}
	
}
