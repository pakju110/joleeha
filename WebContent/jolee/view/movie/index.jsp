<%@page import="req1.MemberVO"%>
<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${memlogin}" var="res" scope="session"/>
<c:set value="${cate }" var="a"/>
<c:set value="admin" var="admin"/>
<c:set value="pro" var="pro"/>
<c:set value="���� ������ ��ȭ�� �˷��帳�ϴ�!" var="b"/>
<%
request.setCharacterEncoding("euc-kr");
%>
${res.grade==admin}<br>
${res!=null }<br>

<c:if test="${a=='first'}">
<c:set value="��ü ��ȭ�� ������ �˷��帳�ϴ�." var="b"/>
</c:if>
${b }

<script type="text/javascript">
	function search(){
			searchgenre.submit();
	}

</script>
<form action="search.jsp" name="searchgenre">
<table>
<tr>
<td><input type="checkbox" name="genre" value="Action">�׼�</td>
<td><input type="checkbox" name="genre" value="Horror">����</td>
<td><input type="checkbox" name="genre" value="Romance">�θǽ�</td>
<td><input type="button" onclick="search()" value="�˻�"></td>
</tr> 
</table>
</form>


<table border="">
	<tr>
		<td>��ȣ</td>
		<td>����</td>
		<td>�帣</td>
		<td>������</td>
		<td>������</td>
		<td>�ۼ���</td>
		<c:if test="${a=='first'&&res.grade==admin}">
		<td>����</td>
		</c:if>
	</tr>
<c:forEach items="${data }" var="vo">
<tr>
		<td>${vo.no }</td>
		<td><a href="detail.jsp?no=${vo.no }">${vo.title }</a></td>
		<td>${vo.genre } </td>
		<td>${vo.reldate } </td>
		<td>${vo.closedate } </td>
		<td>${vo.regdate } </td>
		<c:if test="${a=='first'&&res!=null &&res.grade==admin}">
		<td><a href="delete.jsp?no=${vo.no}">����</a></td>
		</c:if>
	</tr>
</c:forEach>
<c:if test="${a=='first'&&res!=null &&res.grade==admin}">
	<tr >	
		<td colspan="7" align="center" >
			<a href="uploadmovieform.jsp">�۾���</a>
		</td>
	</tr>
	</c:if>
</table>
