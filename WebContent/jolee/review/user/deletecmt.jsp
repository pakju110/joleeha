<%-- <%@page import="req.MemberDAO"%>
<%@page import="req.MemberVO"%> --%>
<%@page import="movie.ComentDAO"%>
<%@page import="movie.ReviewDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
int no = Integer.parseInt(request.getParameter("no"));
int cno = Integer.parseInt(request.getParameter("cno"));
System.out.println("no="+no);

new ComentDAO().delete2(cno);
response.sendRedirect("detail.jsp?no="+no);
%>

	<%-- 
	
<jsp:forward page="../../view/template.jsp"></jsp:forward>
 --%>