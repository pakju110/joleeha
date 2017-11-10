<%@page import="req1.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	NoticeVO vo = (NoticeVO)request.getAttribute("data");
	System.out.println(vo);
%>   
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
			<td><%=vo.getCate() %></td>
		</tr>
		<tr>
			<td>제목</td>
			<td><%=vo.getTitle() %></td>
		</tr>
		<tr>
			<td>첨부파일</td>
			<td>
			<a href="download.jsp?sys=<%=vo.getSysfile() %>&ori=<%=vo.getOrifile() %>"><%=vo.getOrifile() %></a>
			</td>
		</tr>
		<tr>
			<td>내용</td>
			<td><img src="../../file/<%=vo.getSysfile() %>"><%=vo.getContent() %></td>
		</tr>
		<tr>
			<td colspan="2"><a href="delete.jsp?no=<%=vo.getNo() %>">삭제</a></td>
		</tr>
	</table>
</body>
</html>