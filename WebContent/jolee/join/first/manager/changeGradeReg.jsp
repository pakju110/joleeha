<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String a = (String)request.getAttribute("data");
String b = (String)request.getAttribute("data2");

%>
<c:set value="${data }" var="a"/>
<c:set value="${data2 }" var="b"/>
<script type="text/javascript">
alert('${a}');
location.href = '${b}';
	
	
</script>
	
