<%@page import="req1.MemberVO"%>
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
request.setCharacterEncoding("euc-kr");
String upfile = request.getRealPath("file");


	upfile = "C:/file";

	MultipartRequest mm = new MultipartRequest(request,
			upfile, 10 * 1024 * 1024,
			"euc-kr",
			new DefaultFileRenamePolicy()); 

	//request.setCharacterEncoding("euc-kr");
	ReviewVO re = new ReviewVO();
	//임시 아이디 멤버 제작되면 넣을 예정
	MemberVO vo = (MemberVO)session.getAttribute("memlogin");
	String[] arraygenre = mm.getParameterValues("genre");

	String genre = "";

	for (int i = 0; i < arraygenre.length; i++) {
		genre += arraygenre[i];
		if (i < arraygenre.length - 1)
			genre += "/";
	}
	


	re.setCate("user");
	re.setId(vo.getId());
	
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
  