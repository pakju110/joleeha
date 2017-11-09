package movie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;



public class ScrapDAO {

	String url = "localhost:1521:xe";
	String id = "java";
	String pw = "java";

	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;

	public ScrapDAO() {
		// TODO Auto-generated constructor stub

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@" + url, id, pw);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public ArrayList<ScrapVO> list(String id) {
		ArrayList<ScrapVO> res = new ArrayList<>();

		try {
			sql = "select * from MOVIESCRAP where id = ? order by regdate desc";

			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			rs = stmt.executeQuery();

			while (rs.next()) {
				ScrapVO vo = new ScrapVO();
				vo.setCate(rs.getString("cate"));
				vo.setNo(rs.getInt("no"));
				vo.setId(rs.getString("id"));
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

	


	public void insert(ScrapVO re) {
		try {
			sql = "insert into MOVIESCRAP (cate, no, id, regdate) values (" 
					+ "?,?,?,sysdate)";
			System.out.println(sql);

			stmt = con.prepareStatement(sql);

			stmt.setString(1, re.getCate());
			stmt.setInt(2, re.getNo());
			stmt.setString(3, re.getId());

			System.out.println(stmt.executeUpdate());

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	public boolean delete(String id,String cate,int no)
	{
		boolean res = false;
		try {
			
			sql = "delete from MOVIESCRAP where cate= ? and no= ? and id = ?" ;

			stmt = con.prepareStatement(sql);
			// stmt.setString(1, res.getCate());
			stmt.setString(1, cate);
			stmt.setInt(2, no);
			stmt.setString(3, id);
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
