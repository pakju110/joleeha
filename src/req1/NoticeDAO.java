package req1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import lee.PicFile;
import req1.NoticeVO;

public class NoticeDAO {

	
	String url ="localhost:1521:xe";
	String id = "java";
	String pw = "java";
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public NoticeDAO() {
		
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
			System.out.println(cate);
			stmt = con.prepareStatement(sql);
			stmt.setString(1, cate);
			rs = stmt.executeQuery();
			
			while(rs.next())
			{
				NoticeVO vo = new NoticeVO();
				
				vo.setNo(rs.getInt("no"));
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
	
	
	public NoticeVO detail(Integer no)
	{
		NoticeVO res =null;

		try {
			sql = "select * from movienotice where no = ?";
			
			stmt = con.prepareStatement(sql);
			
			stmt.setInt(1, no);
			
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				res = new NoticeVO();
				
				res.setNo(rs.getInt("no"));
				res.setCate(rs.getString("cate"));
				res.setTitle(rs.getString("title"));
				res.setSysfile(rs.getString("sysfile"));
				res.setOrifile(rs.getString("orifile"));
				res.setContent(rs.getString("content"));
				res.setRegDate(rs.getTimestamp("regdate"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}
	
	public void insert(NoticeVO vo )
	{
		try {
			
			sql = "select max(no)+1 from movienotice";
			
			stmt = con.prepareStatement(sql);
			
			rs = stmt.executeQuery();
			
			if(rs.next())
				vo.setNo(rs.getInt(1));
			
			
			sql = "insert into movienotice (cate, no, title, "
					+" orifile, sysfile,"
					+ "content,  regdate) values ("
					+ "?,?,?,?,?,?,sysdate)";
			
			System.out.println(sql);
			
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCate());
			stmt.setInt(2, vo.getNo());
			stmt.setString(3, vo.getTitle());
			stmt.setString(4, vo.getOrifile());
			stmt.setString(5, vo.getSysfile());
			stmt.setString(6, vo.getContent());
			
			
			System.out.println(stmt.executeUpdate());
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	public boolean delete(int no)
	   {
	      boolean res = false;
	      String k = null;
	      try {
	         
	         sql = "select* from movienotice where no=?"; 
	         stmt = con.prepareStatement(sql);
	         stmt.setInt(1, no);
	         rs = stmt.executeQuery();
	         
	         if(rs.next()) {
	             k = (rs.getString("sysfile"));
	         }
	         sql = "delete from movienotice where no=?"; 
	         stmt = con.prepareStatement(sql);
	         stmt.setInt(1, no);   
	         
	         if(stmt.executeUpdate()>0) 
	            res=true;
	         new PicFile().fileDelete(k);
	      } catch (Exception e) {
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      return res;
	   }
	
	
	public boolean modify(NoticeVO vo )
	{
		boolean res = false;
		try {
			sql = "select * from movievober where no=?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, vo.getNo());
			rs = stmt.executeQuery();
			if (rs.next())
				vo.setSysfile(rs.getString("sysfile"));

			//
			sql = "update notice set  cate = ?, title = ?,"
				+ "orifile = ?, sysfile = ?, content = ?"
				+ " where no = ?";
		
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCate());
			stmt.setString(2, vo.getTitle());
			stmt.setString(3, vo.getOrifile());
			stmt.setString(4, vo.getSysfile());
			stmt.setString(5, vo.getContent());
			stmt.setInt(6, vo.getNo());
			
			System.out.println(sql);
			if (stmt.executeUpdate() > 0) {
				res = true;
				new MFile().fileDelete2(vo);
			}
			
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

