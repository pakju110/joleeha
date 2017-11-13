<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	 request.setCharacterEncoding("euc-kr");
%>   

<script type="text/javascript">
	alert('${msg}');
	location.href = 'index.jsp';
</script>