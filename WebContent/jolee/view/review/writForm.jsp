

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
  
    <form action="writReg.jsp" enctype="multipart/form-data" method="post">
    	<table border="1">
    		<tr>
    			<td>����</td>
    			<td><input type="text" name="title"/></td>
    		</tr>
    		<tr>
    			<td>��ȭ����</td>
    			<td>
    				<input type="text"  name="movie"/>
    			</td>
    		</tr>
    		<tr>
    			<td>���� ����</td>
    			<td>
    				<select name="star">
    					<option value="1">��</option>
    					<option value="2">�ڡ�</option>
    					<option value="3">�ڡڡ�</option>
    					<option value="4">�ڡڡڡ�</option>
    					<option value="5">�ڡڡڡڡ�</option>
    				</select>
    			</td>
    		</tr>
    		<tr>
    			<td>����</td>
    			<td><input type="file" name="pic"/></td>
    		</tr>
    		<tr>
    			<td>����</td>
    			<td><textarea name="content"></textarea></td>
    		</tr>
    		<tr>
    			<td colspan="2"><input type="submit" value="�۾���"/><a href="index.jsp">���</a></td>
    		</tr>
    	</table>
    </form>