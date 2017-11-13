<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	function search(){
			searchgenre.submit();
	}

</script>
<form action="search.jsp" name="searchgenre">
<table>
<tr>
<td><input type="checkbox" name="genre" value="Action">액션</td>
<td><input type="checkbox" name="genre" value="Horror">공포</td>
<td><input type="checkbox" name="genre" value="Romance">로맨스</td>
<td><input type="checkbox" name="genre" value="sf">SF</td>
<td><input type="checkbox" name="genre" value="fantasy">판타지</td>
<td><input type="checkbox" name="genre" value="docu">다큐멘터리</td>
<td><input type="button" onclick="search()" value="검색"></td>
</tr> 
</table>
</form>
<table border="">
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>장르</td>
		<td>개봉일</td>
		<td>종료일</td>
		<td>작성일</td>
		<c:if test="${memlogin!=null &&memlogin.grade =='admin' }">
		<td>삭제</td>
		</c:if>
	</tr>

<c:forEach items="${data }" var="vo">
<tr>
		<td>${vo.no }</td>
		<td><a href="detail.jsp?no=${vo.no }">${vo.title }</a></td>
		<td>${vo.genre } </td>
		<td>${vo.reldate } </td>
		<td>${vo.closedate } </td>
		<td>${vo.regdate } </td>
		<c:if test="${memlogin!=null &&memlogin.grade =='admin' }">
		<td><a href="delete.jsp?no=${vo.no }">삭제</a></td>
		</c:if>
	</tr>
</c:forEach>
</table>
<c:if test="${memlogin!=null &&memlogin.grade =='admin' }">
<div align="center"><a href="uploadmovieform.jsp">글쓰기</a></div>
</c:if>
