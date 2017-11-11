<%@page import="req1.MemberVO"%>
<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${memlogin}" var="res" scope="session"/>
<c:set value="${cate }" var="a"/>
<c:set value="admin" var="admin"/>
<c:set value="pro" var="pro"/>
<c:set value="현재 상영중인 영화를 알려드립니다!" var="b"/>
<%
request.setCharacterEncoding("euc-kr");
%>
${res.grade==admin}<br>
${res!=null }<br>

<c:if test="${a=='first'}">
<c:set value="전체 영화의 정보를 알려드립니다." var="b"/>
</c:if>
${b }

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
		<c:if test="${a=='first'&&res.grade==admin}">
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
		<c:if test="${a=='first'&&res!=null &&res.grade==admin}">
		<td><a href="delete.jsp?no=${vo.no}">삭제</a></td>
		</c:if>
	</tr>
</c:forEach>
<c:if test="${a=='first'&&res!=null &&res.grade==admin}">
	<tr >	
		<td colspan="7" align="center" >
			<a href="uploadmovieform.jsp">글쓰기</a>
		</td>
	</tr>
	</c:if>
</table>
