package req1;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class MemberVO {

	String id, pw, gender, email, nick, phone,genre,grade,
			name, sysfile, orifile, path;
	
	public MemberVO() {
			
		}
		
		public MemberVO(String id, String name) {
			super();
			this.id = id;
			this.name = name;
		}

	
	public String getGenre() {
		return genre;
	}



	public void setGenre(String genre) {
		this.genre = genre;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getNick() {
		return nick;
	}



	public void setNick(String nick) {
		this.nick = nick;
	}





	public String getPath() {
		return path;
	}



	public void setPath(String path) {
		this.path = path;
	}



	public String getSysfile() {
		return sysfile;
	}



	public void setSysfile(String sysfile) {
		this.sysfile = sysfile;
	}



	public String getOrifile() {
		return orifile;
	}



	public void setOrifile(String orifile) {
		this.orifile = orifile;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}



}

