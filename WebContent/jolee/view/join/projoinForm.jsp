
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<c:set value="${param.id}" var="id"/>

<c:if test="${id!=null }">
	<c:set value="${param.id }" var="id"/>
</c:if>
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
<script type="text/javascript">
   function idCheck() {
	  
	   jf.action="proIdReg.jsp";
	   jf.submit();
    }
</script>
</head>
<body>
<form action="projoinReg.jsp" name="jf" method="post" enctype="multipart/form-data">
	<table border=1>
		<tr>
			<td>���̵�</td>
			<td>
			<c:choose>
				<c:when test="${id !=null}"><input type="text" name="id" id="id" size="10" maxlength="8" value="${id}"/></c:when>
				<c:otherwise><input type="text" name="id" id="id" size="10" maxlength="8" /></c:otherwise>
			</c:choose>
			<input type="button" onclick="idCheck()"  name="sch" class="sch" value="id�ߺ�Ȯ��"/>
			</td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><input type="text" name="name" /></td>
		</tr>
		<tr>
			<td>��й�ȣ</td>
			<td><input type="password" name="pw" /></td>
		</tr>
		<tr>
			<td>��й�ȣȮ��</td>
			<td><input type="password" name="pwc" /></td>
		</tr>
		<tr>
			<td>����</td>
			<td>
				<input type="radio" name="gender" checked="checked" value="m"/>��
				<input type="radio" name="gender"  value="f"/>��
			</td>
		</tr>
		<tr>
			<td>�г���</td>
			<td><input type="text" name="nick" /></td>
		</tr>
		<tr>
			<td>�ڵ���</td>
			<td><input type="text" name="phone" /></td>
		</tr>
		<tr>
			<td>�̸���</td>
			<td>
				<input type="text" name="email1">@
				<select name="email2">
					<option value="naver.com">���̹�</option>
					<option value="gmail.com">����</option>
					<option value="daum.net" selected="selected">����</option>
					<option value="yahoo.co.kr">����</option>
					<option value="jum.com">��</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>÷������</td>
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
			<td colspan="2" align="center">
			<input type="submit" value="����" class="sch" />
			<input type="reset" value="�ʱ�ȭ" class="sch"/>
			<a href="index.jsp">�ڷ�</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>