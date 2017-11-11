<%@page import="req1.MemberVO"%>
<%@page import="req1.NoticeVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${memlogin}" var="res" scope="session"/>
<c:set value="${cate }" var="a"/>
<table border="">
	<tr>
		<td>no</td>
		<td>제목</td>
		<td>작성일자</td>
	</tr>


<c:forEach items="${data }" var="vo">
	<tr>
		<td>${vo.no }</td>
		
		<td><a href="writeDetail.jsp?no=${vo.no }">${vo.title }</a></td>
		<td>${vo.regdate }</td>
	</tr>
</c:forEach>
<c:if test="${res!=null &&res.grade==admin&&a=='first'}">
<tr>
		<td colspan="3" align="right">
			<a href="writeForm.jsp">공지사항 작성</a>
		</td>
	</tr>
</c:if>
</table>
