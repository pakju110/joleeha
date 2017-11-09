package implicit;

import java.io.IOException;

import javax.servlet.jsp.JspWriter;

public class OutMain {

	JspWriter oo;

	public OutMain(JspWriter oo) {
		super();
		this.oo = oo;
		ppp();
	}
	
	
	void ppp()
	{
		
		try {
			oo.print("와와왕 클래스에서 출력이다<br>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
