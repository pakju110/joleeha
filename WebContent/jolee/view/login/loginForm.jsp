<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String memId="";
	if(request.getParameter("memId")!=null)
		memId=request.getParameter("memId");
%>
<% 
	MemberVO vo = (MemberVO)session.getAttribute("memlogin");

	if(vo!=null){
%>
<%=vo.getName() %>�� �ȳ��ϼ���
<a href="../../login/logout.jsp">�α׾ƿ�</a>	
<%} else { %>
<%-- <a href="../../login/logout.jsp?goUrl=<%=(String)request.getAttribute("nowUrl")%>">�α���</a> --%>

<form action="../../login/loginReg.jsp">
	<input type="hidden" name="goUrl" value="<%=(String)request.getAttribute("nowUrl") %>" />
	���̵�:<input type="text" name="memId" value="<%=memId%>"/>
	��й�ȣ:<input type="text" name="memPw" />
	<input type="submit" value="�α���" />
</form><%} %>
