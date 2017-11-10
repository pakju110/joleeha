<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
	<table border="">
		<tr>
			<td>아이디</td>
			<td>이름</td>
			<td>닉네임</td>
			<td>전화번호</td>
			<td>이메일</td>
			<td>선호 장르</td>
			<td>회원 등급</td>
			<td>등급 수정</td>
		</tr>
	<% for(MemberVO vo : 
	(ArrayList<MemberVO>)request.getAttribute("data")) {%>
		<tr>
			<td><%=vo.getId() %></td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getNick() %></td>
			<td><%=vo.getPhone() %></td>
			<td><%=vo.getEmail() %></td>
			<td><%=vo.getGenre() %></td>
			<td><%=vo.getGrade() %></td>
			<td align="center"><a href="detail.jsp?id=<%=vo.getId() %>">수정</a>
		</tr>
		<%} %>
	</table>



