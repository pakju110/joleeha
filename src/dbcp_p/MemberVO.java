package dbcp_p;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MemberVO {

	String name, id, pw, gender, hobby, email, content, img;
	
	
	Integer grade;
	
	Date birth, regDate;
	
	public String strRegDate()
	{
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(regDate);
	}
	
	
	public MemberVO() {
		
	}


	public String getImg() {
		return img;
	}


	public void setImg(String img) {
		this.img = img;
	}


	public MemberVO(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}


	public String strBirth()
	{
		return new SimpleDateFormat("yyyy-MM-dd").format(birth);
	}
	
	public void parseBirth(String strBirth)
	{
		try {
			birth = new SimpleDateFormat("yyyy-MM-dd").parse(strBirth);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void parseRegDate(String strRegDate)
	{
		try {
			regDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(strRegDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Integer getGrade() {
		return grade;
	}

	public void setGrade(Integer grade) {
		this.grade = grade;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
}
