<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set value="${ msg}" var="msg"/>
<c:set value="${url }" var="url"/>
<%
	 request.setCharacterEncoding("euc-kr");
%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	alert('<%=request.getAttribute("msg")%>');
	location.href = '<%=request.getAttribute("url")%>';
</script>
<!-- <script type="text/javascript">
	alert('${msg}');
	location.href ='${url}';
</script> 아직 detail에 modify로 가는게 없어서 이게 나올일이 없음. 테스트아직안해봄!-->
</body>
</html>