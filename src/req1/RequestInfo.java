package req1;

import javax.servlet.http.HttpServletRequest;

public class RequestInfo {

	HttpServletRequest req;

	public RequestInfo(HttpServletRequest req) {
		super();
		this.req = req;
		
		print();
	}
	
	void print()
	{
		System.out.println();
		System.out.println(req.getRemoteAddr());
		System.out.println(req.getRequestURL());
		System.out.println(req.getProtocol());
		System.out.println(req.getMethod());
		System.out.println(req.getContextPath());
		System.out.println(req.getServerName());
		System.out.println(req.getRequestURI());
	}
	
	
}
