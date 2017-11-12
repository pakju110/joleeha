<%@page import="req1.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	MemberDAO dao = new MemberDAO();
	MemberVO vo = dao.detail(request.getParameter("id"));
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src='../js/member.js'></script>
</head>
<body>
<table border="">
	<tr>
		<td>아이디</td><td><%=vo.getId() %></td>
	</tr>
	<tr>
		<td>이름</td><td><%=vo.getName() %></td>
	</tr>
	<tr>
		<td>닉네임</td><td><%=vo.getNick() %></td>
	</tr><tr>
		<td>핸드폰</td><td><%=vo.getPhone() %></td>
	</tr>
	<tr>
		<td>이메일</td><td><%=vo.getEmail() %></td>
	</tr><tr>
		<td>성별</td><td><%=vo.getGender() %></td>
	</tr><tr>
		<td>회원등급</td><td><%=vo.getGrade() %></td>
	</tr>
	
	<% if(vo.getSysfile()!=null && (vo.getGrade().equals("pro") || vo.getGrade().equals("admin"))) { %>
	<tr>
		<td>첨부파일</td>
		<td><%=vo.getSysfile() %>
		<a href="download.jsp?sys=<%=vo.getSysfile() %>&ori=<%=vo.getOrifile() %>"><%=vo.getOrifile() %></a>
		</td>
	</tr> 
	<% } %>
	
	<tr>
			<td>관심장르</td><td><%=vo.getGenre() %></td>
	</tr><tr>
	<tr>
		<td colspan="2" align="right">
			<a href="deleteForm.jsp?id=<%=vo.getId() %>">회원탈퇴</a>
			<a href="modifyForm.jsp?id=<%=vo.getId() %>">정보수정</a>
		</td>
	</tr>
</table>
</body>
</html>