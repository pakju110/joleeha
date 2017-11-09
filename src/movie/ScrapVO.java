package movie;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ScrapVO {
	
	
	String cate,id;

	Integer no;

	Date  regDate;
	



	

	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}


	public Integer getNo() {
		return no;
	}

	public void setNo(Integer no) {
		this.no = no;
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
