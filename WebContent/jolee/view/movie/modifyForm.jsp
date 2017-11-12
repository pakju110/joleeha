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
<form action="modifyReg.jsp" method="post" enctype="multipart/form-data" name="frm">
	<table border="">
	<tr>
		<td>title</td><td>${vo.title }</td>
	</tr>
	<tr>
		<td>줄거리</td><td>${vo.content }</td>
	</tr>
	<tr>
		<td>사진</td><td><img src="../../file/${vo.sysfile }" width="500"></td>
	</tr>
	<tr>
	<td>포스터 다운로드</td><td><a href="download.jsp?Sysfile=${vo.sysfile }&Orifile=${vo.orfile }" >${vo.orifile }</a></td>
	</tr>
	<tr>
		<td>개봉일</td><td>${vo.reldate }</td>
	</tr>
	<tr>
		<td>종료일</td><td>${vo.closedate }</td>
	</tr>
	<tr>
		<td>등록일</td><td>${vo.regdate }</td>
	</tr>
	
<c:choose>
		<c:when test="${c=='cc' }">
	<tr>	
		<td colspan="2" align="right">
			<a href="index2.jsp">목록</a>
		</td>
	</tr>
</c:when>
		<c:otherwise>
	<tr>	
		<td colspan="2" align="right">

			<a href="index.jsp">목록</a>
		</td>
	</tr>
		</c:otherwise>
	</c:choose>		
	<tr>
			<td colspan="2" align="center">
				<input type="submit" value="수정"  class="sch" />
				<input type="reset" value="초기화" class="sch"/>
				<a href="detail.jsp?id=${vo.no }">뒤로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>