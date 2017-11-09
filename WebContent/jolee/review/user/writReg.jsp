<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.Date"%>
<%@page import="movie.ReviewDAO"%>
<%@page import="movie.ReviewVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
리뷰
<%@ include file="../../inc/menuData.jsp" %>
<%

String upfile = request.getRealPath("file");


	upfile = "C:/file";

	MultipartRequest mm = new MultipartRequest(request,
			upfile, 10 * 1024 * 1024,
			"euc-kr",
			new DefaultFileRenamePolicy()); 

	//request.setCharacterEncoding("euc-kr");
	ReviewVO re = new ReviewVO();
	//임시 아이디 멤버 제작되면 넣을 예정
	session.setAttribute("mem", "ss");
	String id = (String)session.getAttribute("mem");


	String genre = "코미디,액션";


	re.setCate("user");
	re.setId(id);
	
	re.setTitle(mm.getParameter("title"));
	re.setContent(mm.getParameter("content"));
	 re.setOrifile(mm.getOriginalFileName("pic"));
	re.setSysfile(mm.getFilesystemName("pic")); 
	re.setMovietitle(mm.getParameter("movie"));
	re.setGenre(genre);
	re.setStar(Double.parseDouble(mm.getParameter("star")));

	ReviewDAO dao = new ReviewDAO();
	dao.insert(re);
%>

<jsp:forward page="../../view/template.jsp"></jsp:forward>
  