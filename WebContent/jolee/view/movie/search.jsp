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
		<td>����</td>
	</tr>

<c:forEach items="${data }" var="vo">
<tr>
		<td>${vo.no }</td>
		<td><a href="detail.jsp?no=${vo.no }">${vo.title }</a></td>
		<td>${vo.genre } </td>
		<td>${vo.reldate } </td>
		<td>${vo.closedate } </td>
		<td>${vo.regdate } </td>
		<td><a href="delete.jsp?no=${vo.no }">����</a></td>
		
	</tr>
</c:forEach>

	<tr >
		<td colspan="7" align="center" >
			<a href="uploadmovieform.jsp">�۾���</a>
		</td>
	</tr>
</table>

