<%@page import="java.util.LinkedHashMap"%>
<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    
    MemberVO vo = (MemberVO)request.getAttribute("data");
    
    %>

<form action="changeGradeReg.jsp">
	<table>
		<tr>
			<td>���̵�</td>
			<td>���</td>
		</tr>
		<tr>
		<td><input type="text" value = <%=vo.getId() %> readonly="readonly" name="id"></td>
		<td>
			<select name = "grade" >
			<%
			LinkedHashMap <String , String >grade= new LinkedHashMap();				
				grade.put("admin", "������");
				grade.put("pro", "������");
				grade.put("user", "�Ϲ�����");
				grade.put("black", "������Ʈ");
				for(String key : grade.keySet()) {
				
					String chk ="";
				
					if(vo.getGrade().equals(key))
					chk="selected=\"selected\"";%>
					
				<option <%=chk %> value="<%=key%>" /> <%=grade.get(key)%> </option>
			<%} %>
			</select></td>
		</tr>
		<tr>
		<td colspan="2"><input type="submit" value="����"/>
		</tr>
	</table>
</form>
