<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%
	MemberVO vo = (MemberVO)session.getAttribute("mem");
%>
<%=vo.getName() %>님 안녕하세요
<a href="../../login/logout.jsp?goUrl=<%=(String)request.getAttribute("nowUrl")%>">로그아웃</a>
 --%>
