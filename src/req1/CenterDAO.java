/*package req1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import req1.NoticeVO;

public class CenterDAO {

	
	String url ="localhost:1521:xe";
	String id = "java";
	String pw = "java";
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public CenterDAO() {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@"+url, id, pw );
			
			
			
		} catch (Exception e) {
		
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<NoticeVO> list(String cate)
	{
		ArrayList<NoticeVO> res =new ArrayList<>();

		try {
			sql = "select * from movienotice where cate = ? order by regdate desc";
			
			stmt = con.prepareStatement(sql);
			stmt.setString(1, cate);
			rs = stmt.executeQuery();
			
			while(rs.next())
			{
				NoticeVO vo = new NoticeVO();
				
				vo.setId(rs.getInt("id"));
				vo.setTitle(rs.getString("title"));
				vo.setRegDate(rs.getTimestamp("regdate"));
				
				res.add(vo);
			}
			
			
			
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		}finally {
			close();
		}
		
		return res;
	}
	
	
	public NoticeVO detail(String id)
	{
		NoticeVO res =null;

		try {
			sql = "select * from movienotice  where id = ?";
			
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, id);
			
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				res = new NoticeVO();
				
				res.setId(rs.getInt("id"));
				res.setTitle(rs.getString("title"));	
				res.setContent(rs.getString("content"));
				res.setRegDate(rs.getTimestamp("regdate"));
				
				
				
			}
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	public void insert(NoticeVO mem )
	{
		try {
			
			sql = "select max(no)+1 from movienotice";
			
			stmt = con.prepareStatement(sql);
			
			rs = stmt.executeQuery();
			
			if(rs.next())
				mem.setId(rs.getInt(1));
			
			
			sql = "insert into movienotice (id, pw, title, "
					+ "content,  regdate, cate) values ("
					+ "?,?,?,?,sysdate, ?)";
			
			System.out.println(sql);
			
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, mem.getId());
			stmt.setString(2, mem.getPw());
			stmt.setString(3, mem.getTitle());
			stmt.setString(4, mem.getContent());
			stmt.setString(4, mem.getCate());
			
			
			System.out.println(stmt.executeUpdate());
			
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}finally {
			close();
		}
	}
	
	
	public boolean delete(NoticeVO mem )
	{
		boolean res = false;
		try {
			
			sql = "delete from movienotice where id= ?  and pw = ?";
		
			stmt= con.prepareStatement(sql);
			
			stmt.setInt(1, mem.getId());
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
	
	
	public boolean modify(NoticeVO mem )
	{
		boolean res = false;
		try {
			
			
			sql = "update center set  title = ?, content = ?"
				+ " where id=? and pw = ?";
		
			stmt = con.prepareStatement(sql);
			stmt.setString(1,mem.getTitle() );
			
			stmt.setString(2, mem.getContent());
			stmt.setInt(3, mem.getId());
			stmt.setString(4, mem.getPw());
			
			System.out.println(sql);
			if(stmt.executeUpdate()>0)
				res = true;
			
		} catch (Exception e) {
			
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

*/