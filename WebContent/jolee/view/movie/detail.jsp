<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="admin" var="admin"/>
<c:set value="${data }" var="vo" />
<c:set value="${cate }" var="c" />
<c:set value="first" var="first"/>
<table border="">
	<tr>
		<td>title</td>
		<td>${vo.title }</td>
	</tr>
	<tr>
		<td>줄거리</td>
		<td>${vo.content }</td>
	</tr>
	<tr>
		<td>사진${vo.sysfile}</td>
		<td><img src="../../file/${vo.sysfile}" width="500"></td>
	</tr>
	<tr>
		<td>포스터 다운로드</td>
		<td><a href="download.jsp?sysfile=${vo.sysfile}&orifile=${vo.orifile }">${vo.orifile }</a></td>
	</tr>
	<tr>
		<td>개봉일</td>
		<td>${vo.reldate }</td>
	</tr>
	<tr>
		<td>종료일</td>
		<td>${vo.closedate }
		</td>
	</tr>
	<tr>
		<td>등록일</td>
		<td>${vo.regdate }</td>
	</tr>
	<tr>
<c:if test="${memlogin!=null && memlogin.grade == 'admin' && c == 'first'}">
			<td colspan="2" align="right">	<a href="modifyForm.jsp?no=${vo.no }">수정</a>
				</c:if>

	<c:choose>
		<c:when test="${c==cc }">
	
				<a href="index2.jsp">목록</a></td>
			

		</c:when>
		<c:otherwise>

			
				      <a href="index.jsp">목록</a></td>
		</c:otherwise>
	</c:choose>
			</tr>
</table>