<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	.sch{
		width:100px;
		height:30px;
		border:1px;
		border-radius:10px;
	
		}
</style>

</head>
<body>
	<form action="writeReg.jsp" method="post" enctype="multipart/form-data">
		<table border="">
			
			<tr>
				<td >ī�װ�</td>
				<td><select name="cate">
						<option value="noti">��������</option>
						<option value="event">�̺�Ʈ</option>
					</optgroup>
				</select></td>
				</td>
			</tr>
			<tr>
				<td>����</td>
				<td><input type="text" name="title" /></td>
			</tr>
			<tr>
				<td>file</td>
				<td><input type="file" name="orifile" /></td>
				<!-- <td><input type="file" name="orifile" /></td> -->
			</tr>
			<tr>
				<td>����</td>
				<td><textarea name="content"  cols="30" rows="10">
[�Է��ϼ���]


					</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
				<input type="submit" value="���" class="sch" />
				</td>
			</tr>
		</table>
	</form>
	
</body>
</html>