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
			oo.print("�ͿͿ� Ŭ�������� ����̴�<br>");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
