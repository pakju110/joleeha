package req1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {

	String url = "localhost:1521:xe";
	String id = "java";
	String pw = "java";

	Connection con = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	String sql = null;

	public MemberDAO() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@" + url, id, pw);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public ArrayList<MemberVO> list() {
		ArrayList<MemberVO> res = new ArrayList<>();

		try {
			sql = "select * from moviemember";

			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();

			while (rs.next()) {
				MemberVO vo = new MemberVO();

				vo.setId(rs.getString("id"));
				vo.setEmail(rs.getString("email"));

				res.add(vo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return res;
	}
	public ArrayList<MemberVO> gradelist() {
		ArrayList<MemberVO> res = new ArrayList<>();
		
		try {
			sql = "select * from moviemember order by grade";
			
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while (rs.next()) {
				MemberVO vo = new MemberVO();
				
				vo.setId(rs.getString("id"));
				vo.setName(rs.getString("name"));
				vo.setNick(rs.getString("nick"));
				vo.setPhone(rs.getString("phone"));
				vo.setEmail(rs.getString("email"));
				vo.setGenre(rs.getString("genre"));
				vo.setGrade(rs.getString("grade"));
				res.add(vo);
			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}return res;
	}

	public MemberVO detail(String id) {
		MemberVO res = null;

		try {
			sql = "select * from moviemember where id = ?";

			stmt = con.prepareStatement(sql);

			stmt.setString(1, id);

			rs = stmt.executeQuery();

			if (rs.next()) {
				res = new MemberVO();

				res.setId(rs.getString("id"));
				res.setName(rs.getString("name"));
				res.setNick(rs.getString("nick"));
				res.setEmail(rs.getString("email"));
				res.setGender(rs.getString("gender"));
				res.setPhone(rs.getString("phone"));
				res.setGrade(rs.getString("grade"));
				res.setGenre(rs.getString("genre"));
				res.setSysfile(rs.getString("sysfile"));
				res.setOrifile(rs.getString("orifile"));

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return res;
	}

	public MemberVO login(MemberVO vo)
	{
		MemberVO res =null;

		try {
			sql = "select * from moviemember where id = ? and pw = ?";
			
			stmt = con.prepareStatement(sql);
			
			stmt.setString(1, vo.getId());
			stmt.setString(2, vo.getPw());
			
			rs = stmt.executeQuery();
			
			if(rs.next())
			{
				res = new MemberVO();
				
				res.setId(rs.getString("id"));
				res.setName(rs.getString("name"));			
				res.setGrade(rs.getString("grade"));

			}
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return res;
	}

	public void insert(MemberVO mem) {
		try {

			sql = "insert into moviemember (id, name, pw, nick, phone, gender, email, "
					+ "grade, sysfile, orifile, genre) values (" + "?,?,?,?,?,?,?,?,?,?,?)";

			System.out.println(sql);

			stmt = con.prepareStatement(sql);
			stmt.setString(1, mem.getId());
			stmt.setString(2, mem.getName());
			stmt.setString(3, mem.getPw());
			stmt.setString(4, mem.getNick());
			stmt.setString(5, mem.getPhone());
			stmt.setString(6, mem.getGender());
			stmt.setString(7, mem.getEmail());
			stmt.setString(8, mem.getGrade());
			stmt.setString(9, mem.getSysfile());
			stmt.setString(10, mem.getOrifile());
			stmt.setString(11, mem.getGenre());

			System.out.println(stmt.executeUpdate());

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
	}

	public String getgrade(String id) {
		String res = "user";
		try {
			sql = "select grade from moviemember where id = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, id);

			rs = stmt.executeQuery();
			if (rs.next()) {
				res = rs.getString("grade");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return res;
	}

	public boolean delete(MemberVO mem) {
		boolean res = false;
		try {

			sql = "select * from moviemember where id=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, mem.getId());
			rs = stmt.executeQuery();
			if (rs.next())
				mem.setSysfile(rs.getString("sysfile"));

			sql = "delete from moviemember where id=? and pw = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, mem.getId());
			stmt.setString(2, mem.getPw());

			if (stmt.executeUpdate() > 0) {
				res = true;
				new MFile().fileDelete(mem);
			}
		} catch (Exception e) {

			e.printStackTrace();
		} finally {
			close();
		}
		return res;
	}

	public boolean changegrade(String id, String grade) {
		boolean res= false;
		try {
			sql = "update moviemember set grade = ? where id= ?";
			
			stmt = con.prepareStatement(sql);
			stmt.setString(1, grade);
			stmt.setString(2, id);
			
			if(stmt.executeUpdate()>0)
				res = true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		return res;
	}
	
	public boolean modify(MemberVO mem) {
		boolean res = false;
		try {

			sql = "update moviemember set  gender = ?," + "Phone = ?, email = ?, pw = ?" + " where id = ? and pw = ?";

			stmt = con.prepareStatement(sql);
			stmt.setString(1, mem.getGender());
			stmt.setString(2, mem.getPhone());
			stmt.setString(3, mem.getEmail());
			stmt.setString(4, mem.getPw());

			System.out.println(sql);
			if (stmt.executeUpdate() > 0)
				res = true;

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
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