<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<td><input type="checkbox" name="genre" value="sf">SF</td>
<td><input type="checkbox" name="genre" value="fantasy">��Ÿ��</td>
<td><input type="checkbox" name="genre" value="docu">��ť���͸�</td>
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
		<c:if test="${memlogin!=null &&memlogin.grade =='admin' }">
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
		<c:if test="${memlogin!=null &&memlogin.grade =='admin' }">
		<td><a href="delete.jsp?no=${vo.no }">����</a></td>
		</c:if>
	</tr>
</c:forEach>
</table>
<c:if test="${memlogin!=null &&memlogin.grade =='admin' }">
<div align="center"><a href="uploadmovieform.jsp">�۾���</a></div>
</c:if>
