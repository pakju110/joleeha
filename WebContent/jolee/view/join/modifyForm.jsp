<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.HashMap"%>
<%@page import="req1.MemberVO"%>
<%@page import="req1.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
MemberVO vo=(MemberVO)session.getAttribute("vo");
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
			<td>아이디</td>
			<td><%=vo.getId() %><input type="hidden" name="id" 
			value="<%=vo.getId() %>"  /></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" 
			value="<%=vo.getName() %>" readonly="readonly" /></td>
		</tr>
		<tr>
			<td>비밀번호</td><%-- value="<%=vo.getPw()%>" --%>
			<td><input type="password" name="pw" value="<%=vo.getPw()%>"  /></td>
		</tr>
		<tr>
			<td>성별</td>
			<td>
			<%
				LinkedHashMap <String , String >gender= new LinkedHashMap();
				gender.put("m", "남");
				gender.put("f", "여");
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
			<td>닉네임</td>
			<td><input type="text" name="nick" value="<%=vo.getNick() %>" /></td>
		</tr>
		<tr>
			<td>핸드폰</td>
			<td><input type="text" name="phone" value="<%=vo.getPhone() %>" /></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>
			<%
				String [] email = vo.getEmail().split("@");
			%>
			
				<input type="text" name="email1" value="<%=email[0]%>">@
				<select name="email2">
				<%
				LinkedHashMap <String , String >domain= new LinkedHashMap();
				domain.put("naver.com", "네이버");
				domain.put("gmail.com", "구글");
				domain.put("daum.net", "다음");
				domain.put("yahoo.co.kr", "야후");
				domain.put("jum.com", "줌");
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
			<td>파일</td>
			<td><input type="file" name="file" /></td>
		</tr>
		<tr>
			<td>관심장르</td>
			<td>
				<select name="genre">
					<option value="action" selected="selected">장르선택</option>
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
			<input type="submit" value="수정"  class="sch" />
			<input type="reset" value="초기화" class="sch"/>
			<a href="joinDetail.jsp?id=<%=vo.getId()%>">뒤로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>