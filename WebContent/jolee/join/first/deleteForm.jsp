<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = request.getParameter("id");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function frmGo()
	{
		if(confirm('������ Ż���Ͻðڽ��ϱ�?'))
		{
			frm.submit();
		}
	}

</script>
</head>
<body>
<form action="delete.jsp" name="frm">
	<input type="hidden" name="id" value="<%=id%>"/>
	<table border="">
		
		<tr>
			<td>pw</td>
			<td><input type="text" name="pw" /></td>
		</tr>
		<tr>
			
			<td colspan="2" align="center">
				<input type="button" value="Ż��" onclick="frmGo()" />
				<a href="detail.jsp?id=<%=id%>">�ڷ�</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>