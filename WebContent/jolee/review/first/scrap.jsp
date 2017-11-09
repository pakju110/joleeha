<%-- <%@page import="req.MemberDAO"%>
<%@page import="req.MemberVO"%> --%>
<%@page import="movie.ScrapVO"%>
<%@page import="movie.ScrapDAO"%>
<%@page import="movie.ComentDAO"%>
<%@page import="movie.ReviewDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
int no = Integer.parseInt(request.getParameter("no"));
String cate = request.getParameter("cate");


ScrapVO re = new ScrapVO();

re.setCate(cate);
re.setNo(no);
re.setId("ss");//로그인아이디 받아오기

ScrapDAO dao = new ScrapDAO();
dao.insert(re);
response.sendRedirect("detail.jsp?no="+no);
%>

	<%-- 
	
<jsp:forward page="../../view/template.jsp"></jsp:forward>
 --%>