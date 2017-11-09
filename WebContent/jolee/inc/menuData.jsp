<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	LinkedHashMap<String, String>top = new LinkedHashMap();

	String nowUri = request.getRequestURI().substring(
			(request.getContextPath()+"/jolee/").length(),
			request.getRequestURI().length()-4
			);
	String [] cate=nowUri.split("/");
	
	String nowUrl = nowUri+".jsp";
	
	if(request.getParameter("id")!=null)
	{
		nowUrl+="?id="+request.getParameter("id");
	}
	
	System.out.println("uri:"+nowUri);
	System.out.println("url:"+nowUrl);

	String menuParam = cate[0];
	String main = cate[1];
	String service = cate[2];
	
	String serviceUrl = menuParam+"/"+service+".jsp";
	
	if(menuParam.equals("info"))
	{
		serviceUrl = menuParam+"/"+main+".jsp";
	}
	
	request.setAttribute("nowUrl", nowUrl);
	request.setAttribute("cate", main);
	request.setAttribute("serviceUrl", serviceUrl);
	
	top.put("movie","영화정보");
	top.put("review","리뷰");
	top.put("notice","공지사항");
	top.put("mypage","마이페이지");
	top.put("join","회원가입");
	HashMap<String,LinkedHashMap<String, String>>menu = new HashMap();
	
	menu.put("movie", new LinkedHashMap());
	menu.get("movie").put("first","전체영화");
	menu.get("movie").put("ing","상영영화");
	menu.get("movie").put("cc","추천영화");
	
	menu.put("review",new LinkedHashMap());
	menu.get("review").put("first","전무가리뷰");
	menu.get("review").put("user","네티즌리뷰");
	
	menu.put("notice",new LinkedHashMap());
	menu.get("notice").put("first","공지사항");
	menu.get("notice").put("event","할인정보");
	
	
	menu.put("mypage",new LinkedHashMap());
	menu.get("mypage").put("first","회원정보");
	menu.get("mypage").put("history","내가 쓴 글");
	menu.get("mypage").put("1n1","1:1문의");
	menu.get("mypage").put("sc","스크랩");
	
	menu.put("join",new LinkedHashMap());

	top.put("join","회원가입");

	menu.get("join").put("first","회원가입");

	 /*menu.get("join").put("1n1","1:1문의");
	menu.get("join").put("sc","스크랩"); */

		
	LinkedHashMap<String, String> menuList = menu.get(menuParam);
	
	request.setAttribute("top", top);
	request.setAttribute("menuList", menuList);
	
	
%>
<%@ include file="loginPage.jsp" %>


