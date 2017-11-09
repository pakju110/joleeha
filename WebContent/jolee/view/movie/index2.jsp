
<%@page import="movie.ReviewVO"%>
<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
request.setCharacterEncoding("euc-kr");
%>
리뷰페이지에서 얻은 평점순으로 영화 정보를 알려드립니다!


<table border="">
	<tr>
	<td>제목</td>
	<td>장르</td>
	<td>별점</td>
	

	</tr>

<% for(ReviewVO vo : 
	(ArrayList<ReviewVO>)request.getAttribute("data")) {
	
%>
<tr>
		
		<td><a href="detail.jsp?title=<%=vo.getMovietitle().toLowerCase() %>"><%=vo.getMovietitle() %></a></td>
		<td><%=vo.getGenre() %>
		<td><%=vo.getStar() %> </td>
		
		
	</tr>

<%} %>

<%	String a = (String)request.getAttribute("cate");
if(a.equals("first")){ %>
	<tr >
		<td colspan="3" align="center" >
			<a href="uploadmovieform.jsp">글쓰기</a>
		</td>
	</tr>
<%} %>
</table>
