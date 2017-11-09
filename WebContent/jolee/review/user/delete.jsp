<%-- <%@page import="req.MemberDAO"%>
<%@page import="req.MemberVO"%> --%>
<%@page import="movie.ComentDAO"%>
<%@page import="movie.ReviewDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
int no = Integer.parseInt(request.getParameter("no"));

System.out.println("no="+no);
new ReviewDAO().delete(no);
new ComentDAO().delete(no);
response.sendRedirect("index.jsp");
%>

	<%-- 
	
<jsp:forward page="../../view/template.jsp"></jsp:forward>
 --%>