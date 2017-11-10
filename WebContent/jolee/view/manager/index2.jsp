<%@page import="java.util.ArrayList"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<table border="3">
	<tr>
		<td>아이디</td>
		<td>이름</td>
		<td>닉네임</td>
		<td>전화번호</td>
		<td>이메일</td>
		<td>이력증명서</td>
		<td colspan="2">승인여부</td>
		</tr>
		<%for(MemberVO vo : 
				(ArrayList<MemberVO>)request.getAttribute("data")) {%>
		<tr>
			<td><%=vo.getId() %></td>
			<td><%=vo.getName() %></td>
			<td><%=vo.getNick() %></td>
			<td><%=vo.getPhone() %></td>
			<td><%=vo.getEmail() %></td>
			<td><a href="download.jsp?Sysfile=<%=vo.getSysfile() %>&Orifile=<%=vo.getOrifile() %>" ><%=vo.getOrifile() %></a></td>
			<td><a href="admit.jsp?id=<%=vo.getId() %>">승인</a> </td>
			<td><a href="index2.jsp">거부</a></td>
		</tr>
	<%} %>
</table>