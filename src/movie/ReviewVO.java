package movie;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ReviewVO {
	
	
	String cate, title,id,content,orifile,sysfile,movietitle,genre, path;

	Integer no;
	
	Double star;
	
	Date  regDate;
	



	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getMovietitle() {
		return movietitle;
	}

	public void setMovietitle(String movietitle) {
		this.movietitle = movietitle;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
	}

	public Double getStar() {
		return star;
	}

	public void setStar(Double star) {
		this.star = star;
	}

	public String strRegDate()
	{
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(regDate);
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
	
	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	
	
}
