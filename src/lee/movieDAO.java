package lee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import movie.ReviewVO;
import req.MemberVO;

public class movieDAO {	
	String url ="localhost:1521:xe";
	String id = "java";
	String pw = "java";
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public movieDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@"+url, id, pw );
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public ArrayList<movieVO> list(){
		ArrayList<movieVO> res =new ArrayList<>();
		try {
			sql = "select * from movieinfo  order by title asc";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next())
			{
				movieVO vo = new movieVO();
				vo.setNo(rs.getInt("no"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setReldate(rs.getString("reldate"));
				vo.setClosedate(rs.getString("closedate"));
				vo.setGenre(rs.getString("genre"));					
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
	
	public void insert(movieVO mem ){
		try {
			sql = "select max(no)+1 from movieinfo";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			if(rs.next())
				mem.setNo(rs.getInt(1));
			sql = "insert into movieinfo (no, title,reldate, closedate, "
					+ "content, genre,orifile,sysfile,regdate) values ("
					+ "?,?,?,?,?,?,?,?,sysdate)";
			
		
			
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, mem.getNo());
			stmt.setString(2, mem.getTitle());
			stmt.setString(3, mem.getReldate());
			stmt.setString(4, mem.getClosedate());
			stmt.setString(5, mem.getContent());
			stmt.setString(6, mem.getGenre());
			stmt.setString(7, mem.getOrifile());
			stmt.setString(8, mem.getSysfile());

			System.out.println(stmt.executeUpdate());
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	public ArrayList<movieVO> search(String genre){
		ArrayList<movieVO> res =new ArrayList<>();
		try {
			sql = "select * from movieinfo where genre like ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, "%"+genre+"%");
			rs = stmt.executeQuery();
			while(rs.next())
			{
				movieVO vo = new movieVO();
				vo.setNo(rs.getInt("no"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setReldate(rs.getString("reldate"));
				vo.setClosedate(rs.getString("closedate"));
				vo.setGenre(rs.getString("genre"));					
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
	public ArrayList<movieVO> search2(String genre, String genre2){
		ArrayList<movieVO> res =new ArrayList<>();
		try {
			sql = "select * from movieinfo where ( genre like ?) and ( genre like ?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, "%"+genre+"%");
			stmt.setString(2, "%"+genre2+"%");

			rs = stmt.executeQuery();
			while(rs.next())
			{
				movieVO vo = new movieVO();
				vo.setNo(rs.getInt("no"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setReldate(rs.getString("reldate"));
				vo.setClosedate(rs.getString("closedate"));
				vo.setGenre(rs.getString("genre"));					
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
	public ArrayList<movieVO> search3(String genre, String genre2, String genre3){
		ArrayList<movieVO> res =new ArrayList<>();
		try {
			sql = "select * from movieinfo (where genre like ?) and ( where genre like ?)and ( where genre like ?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, "%"+genre+"%");
			stmt.setString(2, "%"+genre2+"%");
			stmt.setString(3, "%"+genre3+"%");
			rs = stmt.executeQuery();
			while(rs.next())
			{
				movieVO vo = new movieVO();
				vo.setNo(rs.getInt("no"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setReldate(rs.getString("reldate"));
				vo.setClosedate(rs.getString("closedate"));
				vo.setGenre(rs.getString("genre"));					
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
	
	
	public ArrayList<movieVO> ing(){
		ArrayList<movieVO> res =new ArrayList<>();
		try {
			sql = "select * from movieinfo where sysdate>=to_date(reldate) and sysdate<=to_date(closedate)";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next())
			{
				movieVO vo = new movieVO();
				vo.setNo(rs.getInt("no"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setReldate(rs.getString("reldate"));
				vo.setClosedate(rs.getString("closedate"));
				vo.setGenre(rs.getString("genre"));					
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
			
	public ArrayList<ReviewVO> recommendlist(){
		ArrayList<ReviewVO> res =new ArrayList<>();
		try {
			sql = "select movietitle, round(avg(star),1) star, genre from moviereview group by movietitle ,genre order by star desc";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next())
			{
				ReviewVO vo = new ReviewVO();
				vo.setMovietitle(rs.getString("movietitle"));
//				vo.setStar(rs.getInt("round(avg(star),2)"));
				vo.setStar(rs.getDouble("star"));
				vo.setGenre(rs.getString("genre"));
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
		
		
	public boolean delete(int no)
	{	
		boolean res = false;
		try {
			
			sql = "delete from movieinfo where no=?"; 
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
	
	public movieVO detail(int no){
		movieVO res =null;
		try {
			sql = "select * from movieinfo where no = ?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1,no);
			
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
	
	public boolean modify(movieVO mem )
	{
		boolean res = false;
		try {
			
			sql = "update movieinfo set title=?, reldate=?, closedate=?, content=?, genre=?, orifile=?, sysfile=?"
				+ " where no=?";
		
			stmt = con.prepareStatement(sql);
			stmt.setString(1,mem.getTitle());
			stmt.setString(2,mem.getReldate());
			stmt.setString(3, mem.getClosedate());
			stmt.setString(4, mem.getContent());
			stmt.setString(5, mem.getGenre());
			stmt.setString(6, mem.getOrifile());
			stmt.setString(7, mem.getSysfile());
			stmt.setInt(8, mem.getNo());
			
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
	

	
	
	
	public void close()
	{
		try { if(rs!=null) rs.close();} catch (SQLException e) {}
		try { if(stmt!=null) stmt.close();} catch (SQLException e) {}
		try { if(con!=null)	con.close();} catch (SQLException e) { }
	}
}
