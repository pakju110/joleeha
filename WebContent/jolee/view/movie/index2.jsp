
<%@page import="movie.ReviewVO"%>
<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
request.setCharacterEncoding("euc-kr");
%>
<c:set value="${cate }" var="a"/>
리뷰페이지에서 얻은 평점순으로 영화 정보를 알려드립니다!
<table border="">
	<tr>
		<td>제목</td>
		<td>장르</td>
		<td>별점</td>
	</tr>
<c:forEach items="${data }" var="vo">
	<tr>
		<td><a href="detail.jsp?title=${fn:toLowerCase(vo.movietitle)} %>">${fn:toLowerCase(vo.movietitle)}</a></td>
		<td>${vo.genre }
		<td>${vo.star } </td>
	</tr>
</c:forEach>
</table>
