package lee;

import java.util.Date;

public class movieVO {
	String title, reldate, closedate, content, orifile, sysfile, genre;
	int no;
	Date regdate;
	
	
	
	public String getClosedate() {
		return closedate;
	}
	public void setClosedate(String closedate) {
		this.closedate = closedate;
	}
	public movieVO() {
		super();

	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getReldate() {
		return reldate;
	}
	public void setReldate(String reldate) {
		this.reldate = reldate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getOrifile() {
		return orifile;
	}
	public void setOrifile(String orifile) {
		this.orifile = orifile;
	}
	public String getSysfile() {
		return sysfile;
	}
	public void setSysfile(String sysfile) {
		this.sysfile = sysfile;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	
	
	
	
	
	
}
