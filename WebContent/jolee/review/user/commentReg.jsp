
<%@page import="java.util.Date"%>
<%@page import="movie.ComentDAO"%>
<%@page import="movie.ComentVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
����
<%@ include file="../../inc/menuData.jsp" %>
<%
	request.setCharacterEncoding("euc-kr");
	ComentVO re2 = new ComentVO();
	//�ӽ� ���̵� ��� ���۵Ǹ� ���� ����
	session.setAttribute("mem", "ss");
	String id = (String)session.getAttribute("mem");

	String cate2 = (String)request.getAttribute("cate");
	int no =Integer.parseInt((String)session.getAttribute("no"));

	re2.setCate(cate2);
	//re.setCate("first");
	re2.setNo(no);
	re2.setId(id);
	re2.setContent(request.getParameter("content"));
	

	ComentDAO dao2 = new ComentDAO();
	dao2.insert(re2);

%>

<jsp:forward page="../../view/template.jsp"></jsp:forward>
  