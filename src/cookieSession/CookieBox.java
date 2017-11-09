package cookieSession;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieBox {

	Map<String, String> map = new HashMap<>();
	
	public CookieBox(HttpServletRequest request) {
		// TODO Auto-generated constructor stub
		Cookie [] arr = request.getCookies();
		
		for (Cookie cookie : arr) {
			try {
				map.put(cookie.getName(), 
						URLDecoder.decode(cookie.getValue(),"euc-kr"));
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	public static void create(
			String name, 
			String value, 
			HttpServletResponse response) throws IOException {
		Cookie coo = 
			new Cookie(name, URLEncoder.encode(value, "euc-kr"));
		coo.setPath("/");
		response.addCookie(coo);
	}
	
	public String getValue(String name)
	{
		String res = null;
		if(map.containsKey(name))
			res = map.get(name);
		
		return res;
	}
	
	public boolean exists(String name)
	{
		return map.containsKey(name);
	}
	
	public static void delete(String name, HttpServletResponse response)
	{
		Cookie coo = new Cookie(name, "");
		coo.setPath("/");
		coo.setMaxAge(0);
		response.addCookie(coo);
	}
	
}
