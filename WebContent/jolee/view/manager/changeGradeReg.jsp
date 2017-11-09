<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%
String a = (String)request.getAttribute("data");
String b = (String)request.getAttribute("data2");

%>
<script type="text/javascript">
alert('<%=a%>');
location.href = '<%=b%>';
	
	
</script>
	
