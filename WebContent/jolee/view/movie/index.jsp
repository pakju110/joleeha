
<%@page import="req1.MemberVO"%>
<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

request.setCharacterEncoding("euc-kr");
String a = (String)request.getAttribute("cate");
MemberVO res = (MemberVO)session.getAttribute("memlogin");

	String b="���� ������ ��ȭ�� �˷��帳�ϴ�!";
	
%>
<%if(a.equals("first")){
	 b="��ü ��ȭ�� ������ �˷��帳�ϴ�.";
}

%>


<%=b %>

<script type="text/javascript">
	function search(){
			searchgenre.submit();
	}

</script>
<form action="search.jsp" name="searchgenre">
<table>
<tr>
<td><input type="checkbox" name="genre" value="Action">�׼�</td>
<td><input type="checkbox" name="genre" value="Horror">����</td>
<td><input type="checkbox" name="genre" value="Romance">�θǽ�</td>
<td><input type="button" onclick="search()" value="�˻�"></td>
</tr> 
</table>
</form>


<table border="">
	<tr>
		<td>��ȣ</td>
		<td>����</td>
		<td>�帣</td>
		<td>������</td>
		<td>������</td>
		<td>�ۼ���</td>
		<%if(/* a.equals("first")&&res.getGrade()!=null&&res.getGrade().equals("admin") */
		res != null && (res.getGrade().equals("pro") || res.getGrade().equals("admin"))){ %>
		<td>����</td>
		<%} %>
	</tr>

<% for(movieVO vo : 
	(ArrayList<movieVO>)request.getAttribute("data")) {
	
%>
<tr>
		<td><%=vo.getNo() %></td>
		<td><a href="detail.jsp?no=<%=vo.getNo() %>"><%=vo.getTitle() %></a></td>
		<td><%=vo.getGenre() %> </td>
		<td><%=vo.getReldate() %> </td>
		<td><%=vo.getClosedate() %> </td>
		<td><%=vo.getRegdate() %> </td>
		<%if(res != null && (res.getGrade().equals("pro") || res.getGrade().equals("admin"))){ %>
		<td><a href="delete.jsp?no=<%=vo.getNo() %>">����</a></td>
		<%} %>
	</tr>

<%}
	if(res != null && res.getGrade().equals("pro")){%>
	<tr >	
		<td colspan="7" align="center" >
			<a href="uploadmovieform.jsp">�۾���</a>
		</td>
	</tr>
	<%} %>
</table>
