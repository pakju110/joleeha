<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.HashMap"%>
<%@page import="req1.MemberVO"%>
<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
MemberVO vo=(MemberVO)request.getAttribute("vo");
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
	<table border=1>
		<tr>
			<td>���̵�</td>
			<td><%=vo.getId() %><input type="hidden" name="id" 
			value="<%=vo.getId() %>"  /></td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><input type="text" name="name" 
			value="<%=vo.getName() %>" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>��й�ȣ</td><%-- value="<%=vo.getPw()%>" --%>
			<td><input type="text" name="pw"    /></td>
		</tr>
		<tr>
			<td>����</td>
			<td>
			<%
				LinkedHashMap <String , String >gender= new LinkedHashMap();
				gender.put("m", "��");
				gender.put("f", "��");
			for(String key : gender.keySet()) {
				String chk ="";
				
				if(vo.getGender().equals(key))
					chk="checked=\"checked\"";
			%>
				<input type="radio" name="gender" <%=chk %> value="<%=key%>"/>
				<%=gender.get(key)%>
			<%} %>
			</td>
		</tr>
		<tr>
			<td>�г���</td>
			<td><input type="text" name="nick" value="<%=vo.getNick() %>" /></td>
		</tr>
		<tr>
			<td>�ڵ���</td>
			<td><input type="text" name="phone" value="<%=vo.getPhone() %>" /></td>
		</tr>
		<tr>
			<td>�̸���</td>
			<td>
			<%
				String [] email = vo.getEmail().split("@");
			%>
			
				<input type="text" name="email1" value="<%=email[0]%>">@
				<select name="email2">
				<%
				LinkedHashMap <String , String >domain= new LinkedHashMap();
				domain.put("naver.com", "���̹�");
				domain.put("gmail.com", "����");
				domain.put("daum.net", "����");
				domain.put("yahoo.co.kr", "����");
				domain.put("jum.com", "��");
			for(String key : domain.keySet()) {
				String chk ="";
				
				if(email[1].equals(key))
					chk="selected=\"selected\"";
			%>
				<option  <%=chk %> value="<%=key%>"/>
				<%=domain.get(key)%></option>
			<%} %>
				</select>
			</td>
		</tr>
		<tr>


		</tr>
		<tr>
			<td>����</td>
			<td><input type="file" name="file" /></td>
		</tr>
		<tr>
			<td>�����帣</td>
			<td>
				<select name="genre">
					<option value="action" selected="selected">�帣����</option>
					<option value="action">action</option>
					<option value="fantasy">fantasy</option>
					<option value="melo" >melo</option>
					<option value="mystery">mystery</option>
					<option value="noir">noir</option>
					<option value="horror">horror</option>
				</select>
			</td>
		</tr>
		<tr>
			
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="����"  class="sch" />
			<input type="reset" value="�ʱ�ȭ" class="sch"/>
			<a href="index.jsp">�ڷ�</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>