package movie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import file_p1.PicFile;
import req.MemberVO;

public class ReviewDAO {

	String url = "localhost:1521:xe";
	String id = "java";
	String pw = "java";

	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;

	public ReviewDAO() {
		// TODO Auto-generated constructor stub

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@" + url, id, pw);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public ArrayList<ReviewVO> list(String cate) {
		ArrayList<ReviewVO> res = new ArrayList<>();

		try {
			sql = "select * from moviereview where cate = ? order by regdate desc";

			stmt = con.prepareStatement(sql);
			stmt.setString(1, cate);
			rs = stmt.executeQuery();

			while (rs.next()) {
				ReviewVO vo = new ReviewVO();
				vo.setCate(rs.getString("cate"));
				vo.setNo(rs.getInt("no"));
				vo.setTitle(rs.getString("title"));
				vo.setId(rs.getString("id"));
				vo.setStar(rs.getDouble("star"));
				vo.setMovietitle(rs.getString("movietitle"));
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

	public ReviewVO detail(int no) {
		ReviewVO res = null;

		try {
			sql = "select * from moviereview where no = ?";

			stmt = con.prepareStatement(sql);
			// stmt.setString(1, res.getCate());
			stmt.setInt(1, no);
			rs = stmt.executeQuery();

			if (rs.next()) {
				res = new ReviewVO();

				res.setRegDate(rs.getTimestamp("regdate"));
				res.setCate(rs.getString("cate"));
				res.setNo(rs.getInt("no"));
				res.setTitle(rs.getString("title"));
				res.setId(rs.getString("id"));
				res.setContent(rs.getString("content"));
				res.setOrifile(rs.getString("orifile"));
				res.setSysfile(rs.getString("sysfile"));
				res.setMovietitle(rs.getString("movietitle"));
				res.setGenre(rs.getString("genre"));

				res.setStar(rs.getDouble("star"));
				

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}

		return res;
	}


	public void insert(ReviewVO re) {
		try {
			sql = "select max(no)+1 from moviereview";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			if(rs.next())
				re.setNo(rs.getInt(1));
			sql = "insert into moviereview (cate, no, title, id, regdate, "
					+ "content, orifile, sysfile, movietitle, genre, star) values (" 
					+ "?,?,?,?,sysdate,?,?,?,?,?,?)";
			System.out.println(sql);

			stmt = con.prepareStatement(sql);

			stmt.setString(1, re.getCate());
			stmt.setInt(2, re.getNo());
			stmt.setString(3, re.getTitle());
			stmt.setString(4, re.getId());
			stmt.setString(5, re.getContent());
			stmt.setString(6, re.getOrifile());
			stmt.setString(7, re.getSysfile());
			stmt.setString(8, re.getMovietitle());
			stmt.setString(9, re.getGenre());

			stmt.setDouble(10,re.getStar());

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
			
			sql = "delete from moviereview where no= ?" ;

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
