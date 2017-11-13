<%@page import="req1.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${memlogin}" var="res" scope="session"/>
<c:set value="${data }" var="vo"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border=1>
		<tr>
			<td>카테고리</td>
			<td>${vo.cate}</td>
		</tr>
		<tr>
			<td>제목</td>
			<td>${vo.title}</td>
		</tr>
		<tr>
			<td>첨부파일</td>
			<td>
			<a href="download.jsp?sys=${vo.sysfile}&ori=${vo.orifile}">${vo.orifile}</a>
			</td>
		</tr>
		<tr>
			<td>내용</td>
			<td><img src="../../file/${vo.sysfile}"/>${vo.content}</td>
		</tr>
		<tr>
			<td colspan="2"><a href="delete.jsp?no=${vo.no}">삭제</a></td>
		</tr>
	</table>
</body>
</html>