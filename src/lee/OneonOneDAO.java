package lee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import movie.ReviewVO;

public class OneonOneDAO {	
	String url ="localhost:1521:xe";
	String id = "java";
	String pw = "java";
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public OneonOneDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@"+url, id, pw );
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<OneonOneVO> list(String id){
		ArrayList<OneonOneVO> res =new ArrayList<>();
		try {
			sql = "select * from OneonOne where id=? order by regdate desc";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();
			while(rs.next())
			{
				OneonOneVO vo = new OneonOneVO();
				vo.setNo(rs.getInt("no"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));	
				vo.setAnswer(rs.getInt("answer"));
				vo.setRegdate(rs.getDate("regdate"));					
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
	
	public void insert(OneonOneVO mem){
		try {
			sql = "select max(no)+1 from OneonOne";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			if(rs.next())
				mem.setNo(rs.getInt(1));
			
			sql = "insert into OneonOne (no, title,content,regdate,answer,id) values (?,?,?,sysdate,?,?)";
			
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, mem.getNo());
			stmt.setString(2, mem.getTitle());
			stmt.setString(3, mem.getContent());
			stmt.setInt(4, mem.getAnswer());
			stmt.setString(5, "superpower");
		//	stmt.setString(5, mem.getId());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	public boolean delete(int no)
	{	
		boolean res = false;
		try {
			
			sql = "delete from OneonOne where no=?"; 
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, no);
			
			if(stmt.executeUpdate()>0) 
				res=true;
				
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	
	public OneonOneVO detail(int no){
		OneonOneVO res =null;
		try {
			sql = "select * from OneonOne where no = ?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1,no);
			
			rs = stmt.executeQuery();
			if(rs.next()){
				res = new OneonOneVO();
				
				res.setNo(rs.getInt("no"));
				res.setTitle(rs.getString("title"));
				res.setContent(rs.getString("content"));
				res.setRegdate(rs.getTimestamp("regDate"));
				res.setAnswer(rs.getInt("answer"));
				res.setId(rs.getString("id"));
			}	
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}return res;
	}
	public movieVO detail2(String title){
		movieVO res =null;
		try {
			sql = "select * from movieinfo where title = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1,title);
			
			rs = stmt.executeQuery();
			if(rs.next()){
				res = new movieVO();
				
				res.setNo(rs.getInt("no"));
				res.setTitle(rs.getString("title"));
				res.setContent(rs.getString("content"));
				res.setRegdate(rs.getTimestamp("regDate"));
				res.setReldate(rs.getString("reldate"));
				res.setClosedate(rs.getString("closedate"));
				res.setSysfile(rs.getString("sysfile"));
				res.setOrifile(rs.getString("orifile"));
			}	
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}return res;
	}
	
	
	
	public void close()
	{
		try { if(rs!=null) rs.close();} catch (SQLException e) {}
		try { if(stmt!=null) stmt.close();} catch (SQLException e) {}
		try { if(con!=null)	con.close();} catch (SQLException e) { }
	}
}
