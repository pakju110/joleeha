<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:set value="${data}" var="vo"/>
<c:set value="${cate }" var="c" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style type="text/css">
.sch{
	width:100px;
	height:30px;
	border-radius:15px; 
	}

</style>
</head>
<body>
<form action="modifyReg.jsp" method="post" >
	<table border="">
	
	
		<tr>
			<td>게시번호</td>
			<td><input type="text" name="no" 
			value="${param.no }" readonly="readonly" /></td>
		</tr>
		<tr>
		<td>title</td>
		<td><input type="text" name="title" value="${vo.title }" /></td>
		
	</tr>
	<tr>
		<td>줄거리</td><td><input type="text" name="content" value="${vo.content }" /></td>
	</tr>
	<tr>
		<td>장르</td>
			<td><input type="checkbox" name="genre" value="action"/>액션
			<input type="checkbox" name="genre" value="horror"/> 공포
			<input type="checkbox" name="genre" value="romance" />로맨스
			<input type="checkbox" name="genre" value="sf" />SF
			<input type="checkbox" name="genre" value="fantasy" />판타지
			<input type="checkbox" name="genre" value="docu" />다큐멘터리
		</td>
	</tr>
	<tr>
		<td>개봉일</td><td><input type="text" name="reldate" value="${vo.reldate }" /></td>
	</tr>
	<tr>
		<td>종료일</td><td><input type="text" name="closedate" value="${vo.closedate }" /></td>
	</tr>
	<tr>
		<td>등록일</td><td><input type="text" name="regdate" value="${vo.regdate }" readonly="readonly" /></td>
	</tr>

	<tr>
			<td colspan="2" align="center">
				<input type="submit" value="수정"  class="sch" />
				<input type="reset" value="초기화" class="sch"/>
				<a href="detail.jsp?no=${param.no }">뒤로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>