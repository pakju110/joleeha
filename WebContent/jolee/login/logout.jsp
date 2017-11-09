<%@page import="req1.MemberDAO"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%


String url = "../"+request.getParameter("goUrl");

MemberVO res = (MemberVO)session.getAttribute("memlogin");
session.invalidate();
response.sendRedirect("../movie/first/index.jsp");

%>
<%-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		alert("<%=res.getName()%>님 로그아웃되었습니다.");
		location.href="<%=url%>";
	</script>
</body>
</html> --%>