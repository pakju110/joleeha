package movie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;



public class ComentDAO {

	String url = "localhost:1521:xe";
	String id = "java";
	String pw = "java";

	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;

	 public ComentDAO() {
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

	public ArrayList<ComentVO> list(String cate,int no) {
		ArrayList<ComentVO> res = new ArrayList<>();

		try {
			sql = "select * from moviecoment where cate = ? and no = ? order by regdate desc";

			stmt = con.prepareStatement(sql);
			stmt.setString(1, cate);
			stmt.setInt(2, no);
			rs = stmt.executeQuery();

			while (rs.next()) {
				ComentVO vo = new ComentVO();
				vo.setCate(rs.getString("cate"));
				vo.setNo(rs.getInt("no"));
				vo.setCno(rs.getInt("cno"));
				vo.setId(rs.getString("id"));
				vo.setContent(rs.getString("content"));
				vo.setRegDate(rs.getTimestamp("regdate"));
				res.add(vo);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}

		return res;
	}

	


	public void insert(ComentVO re) {
		try {
			sql = "select max(cno)+1 from moviecoment";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			if(rs.next())
				re.setCno(rs.getInt(1));
			sql = "insert into moviecoment (cate, no,cno, id,content, regdate) values (" 
					+ "?,?,?,?,?,sysdate)";
			System.out.println(sql);

			stmt = con.prepareStatement(sql);

			stmt.setString(1, re.getCate());
			stmt.setInt(2, re.getNo());
			stmt.setInt(3, re.getCno());
			stmt.setString(4, re.getId());
			stmt.setString(5, re.getContent());

			System.out.println(stmt.executeUpdate());

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	public boolean delete(int no )
	{
		boolean res = false;
		try {
			
			sql = "delete from moviecoment where no= ?" ;

			stmt = con.prepareStatement(sql);
			// stmt.setString(1, res.getCate());
			stmt.setInt(1, no);
			rs = stmt.executeQuery();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	public boolean delete2(int no )
	{
		boolean res = false;
		try {
			
			sql = "delete from moviecoment where cno= ?" ;

			stmt = con.prepareStatement(sql);
			// stmt.setString(1, res.getCate());
			stmt.setInt(1, no);
			rs = stmt.executeQuery();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		return res;
	}
	public void close() {
		try {
			if (rs != null)
				rs.close();
		} catch (SQLException e) {
		}
		try {
			if (stmt != null)
				stmt.close();
		} catch (SQLException e) {
		}
		try {
			if (con != null)
				con.close();
		} catch (SQLException e) {
		}
	}

}
