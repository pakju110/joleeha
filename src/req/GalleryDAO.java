package req;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class GalleryDAO {

	
	String url ="localhost:1521:xe";
	String id = "java";
	String pw = "java";
	
	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;
	
	public GalleryDAO() {
		// TODO Auto-generated constructor stub
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection(
					"jdbc:oracle:thin:@"+url, id, pw );
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<GalleryVO> list(String cate)
	{
		ArrayList<GalleryVO> res =new ArrayList<>();

		try {
			sql = "select * from gallery where cate = ? order by num desc";
			
			stmt = con.prepareStatement(sql);
			stmt.setString(1, cate);
			rs = stmt.executeQuery();
			
			while(rs.next())
			{
				GalleryVO vo = new GalleryVO();
				
				vo.setNum(rs.getInt("num"));
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
	
	
	public GalleryVO detail(String num)
	{
		GalleryVO res =null;

		try {
			sql = "select * from gallery  where num = ?";
			
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, num);
			
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				res = new GalleryVO();
				
				res.setNum(rs.getInt("num"));
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
	
	
	
	
	
	
	public void close()
	{
		try { if(rs!=null) rs.close();} catch (SQLException e) {}
		try { if(stmt!=null) stmt.close();} catch (SQLException e) {}
		try { if(con!=null)	con.close();} catch (SQLException e) { }
	}
	
}

