<%@page import="req1.MemberVO"%>
<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<table width="100%">
<c:forEach items="${menuList }" var="im">

	<tr align="center">
		<td><a href="../${im.key }/index.jsp">${im.value }</a></td>
	</tr>
	
</c:forEach>
</table>