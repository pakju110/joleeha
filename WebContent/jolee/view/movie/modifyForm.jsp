<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<c:set value="${data}" var="vo"/>
<c:set value="${cate }" var="c" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style type="text/css">
.sch{
	width:100px;
	height:30px;
	border-radius:15px; 
	}

</style>
</head>
<body>
<form action="modifyReg.jsp" method="post" >
	<table border="">
	
	
		<tr>
			<td>�Խù�ȣ</td>
			<td><input type="text" name="no" 
			value="${param.no }" readonly="readonly" /></td>
		</tr>
		<tr>
		<td>title</td>
		<td><input type="text" name="title" value="${vo.title }" /></td>
		
	</tr>
	<tr>
		<td>�ٰŸ�</td><td><input type="text" name="content" value="${vo.content }" /></td>
	</tr>
	<tr>
		<td>�帣</td>
			<td><input type="checkbox" name="genre" value="action"/>�׼�
			<input type="checkbox" name="genre" value="horror"/> ����
			<input type="checkbox" name="genre" value="romance" />�θǽ�
			<input type="checkbox" name="genre" value="sf" />SF
			<input type="checkbox" name="genre" value="fantasy" />��Ÿ��
			<input type="checkbox" name="genre" value="docu" />��ť���͸�
		</td>
	</tr>
	<tr>
		<td>������</td><td><input type="text" name="reldate" value="${vo.reldate }" /></td>
	</tr>
	<tr>
		<td>������</td><td><input type="text" name="closedate" value="${vo.closedate }" /></td>
	</tr>
	<tr>
		<td>�����</td><td><input type="text" name="regdate" value="${vo.regdate }" readonly="readonly" /></td>
	</tr>

	<tr>
			<td colspan="2" align="center">
				<input type="submit" value="����"  class="sch" />
				<input type="reset" value="�ʱ�ȭ" class="sch"/>
				<a href="detail.jsp?no=${param.no }">�ڷ�</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>