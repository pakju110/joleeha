<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script>
	alert('<%=request.getAttribute("msg")%>');
	location.href = '<%=request.getAttribute("url")%>';
</script>
<!-- <script type="text/javascript">

	alert('회원가입 되었습니다');
	location.href = 'index.jsp';
	
</script> -->
</body>
</html>