<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	movieVO vo = (movieVO )request.getAttribute("data");
%>   
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
<form action="modifyReg.jsp" method="post" enctype="multipart/form-data" name="frm">
	<table border="">
	<tr>
		<td>title</td><td><%=vo.getTitle() %></td>
	</tr>
	<tr>
		<td>�ٰŸ�</td><td><%=vo.getContent() %></td>
	</tr>
	<tr>
		<td>����</td><td><img src="../../file/<%=vo.getSysfile() %>" width="500"></td>
	</tr>
	<tr>
	<td>������ �ٿ�ε�</td><td><a href="download.jsp?Sysfile=<%=vo.getSysfile() %>&Orifile=<%=vo.getOrifile() %>" ><%=vo.getOrifile() %></a></td>
	</tr>
	<tr>
		<td>������</td><td><%=vo.getReldate() %></td>
	</tr>
	<tr>
		<td>������</td><td><%=vo.getClosedate() %></td>
	</tr>
	<tr>
		<td>�����</td><td><%=vo.getRegdate()%></td>
	</tr>
	

<%
System.out.println(request.getAttribute("cate"));
if(request.getAttribute("cate").equals("cc")){
	%>
	<tr>	
		<td colspan="2" align="right">
			<a href="index2.jsp">���</a>
		</td>
	</tr>

	
	<%
}else{
%>
	<tr>	
		<td colspan="2" align="right">

			<a href="index.jsp">���</a>
		</td>
	</tr>
<%}%>		
	<tr>
			<td colspan="2" align="center">
			<input type="submit" value="����"  class="sch" />
			<input type="reset" value="�ʱ�ȭ" class="sch"/>
			<a href="detail.jsp?id=<%=vo.getNo()%>">�ڷ�</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>