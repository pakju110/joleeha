<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function frmGo()
	{
		if(confirm('정말로 탈퇴하시겠습니까?'))
		{
			frm.submit();
		}
	}

</script>
</head>
<body>
<form action="delete.jsp" name="frm">
	<input type="hidden" name="id" value="${param.id }"/> <!-- 이부분 체크해봐야함. -->
	<table border="">
		
		<tr>
			<td>pw</td>
			<td><input type="text" name="pw" /></td>
		</tr>
		<tr>
			
			<td colspan="2" align="center">
				<input type="button" value="탈퇴" onclick="frmGo()" />
				<a href="detail.jsp?id=${param.id }">뒤로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>