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
	
	top.put("movie","��ȭ����");
	top.put("review","����");
	top.put("notice","��������");
	top.put("mypage","����������");
	top.put("join","ȸ������");
	HashMap<String,LinkedHashMap<String, String>>menu = new HashMap();
	
	menu.put("movie", new LinkedHashMap());
	menu.get("movie").put("first","��ü��ȭ");
	menu.get("movie").put("ing","�󿵿�ȭ");
	menu.get("movie").put("cc","��õ��ȭ");
	
	menu.put("review",new LinkedHashMap());
	menu.get("review").put("first","����������");
	menu.get("review").put("user","��Ƽ�𸮺�");
	
	menu.put("notice",new LinkedHashMap());
	menu.get("notice").put("first","��������");
	menu.get("notice").put("event","��������");
	
	
	menu.put("mypage",new LinkedHashMap());
	menu.get("mypage").put("first","ȸ������");
	menu.get("mypage").put("history","���� �� ��");
	menu.get("mypage").put("1n1","1:1����");
	menu.get("mypage").put("sc","��ũ��");
	
	menu.put("join",new LinkedHashMap());

	top.put("join","ȸ������");

	menu.get("join").put("first","ȸ������");

	 /*menu.get("join").put("1n1","1:1����");
	menu.get("join").put("sc","��ũ��"); */

		
	LinkedHashMap<String, String> menuList = menu.get(menuParam);
	
	request.setAttribute("top", top);
	request.setAttribute("menuList", menuList);
	
	
%>
<%@ include file="loginPage.jsp" %>


