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
			<td>아이디</td>
			<td>등급</td>
		</tr>
		<tr>
		<td><input type="text" value = <%=vo.getId() %> readonly="readonly" name="id"></td>
		<td>
			<select name = "grade" >
			<%
			LinkedHashMap <String , String >grade= new LinkedHashMap();				
				grade.put("admin", "관리자");
				grade.put("pro", "전문가");
				grade.put("user", "일반유저");
				grade.put("black", "블랙리스트");
				for(String key : grade.keySet()) {
				
					String chk ="";
				
					if(vo.getGrade().equals(key))
					chk="selected=\"selected\"";%>
					
				<option <%=chk %> value="<%=key%>" /> <%=grade.get(key)%> </option>
			<%} %>
			</select></td>
		</tr>
		<tr>
		<td colspan="2"><input type="submit" value="수정"/>
		</tr>
	</table>
</form>
