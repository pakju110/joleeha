
<%@page import="req1.MemberVO"%>
<%@page import="lee.movieVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%

request.setCharacterEncoding("euc-kr");
String a = (String)request.getAttribute("cate");
MemberVO res = (MemberVO)session.getAttribute("memlogin");

	String b="현재 상영중인 영화를 알려드립니다!";
	
%>
<%if(a.equals("first")){
	 b="전체 영화의 정보를 알려드립니다.";
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
<td><input type="checkbox" name="genre" value="Action">액션</td>
<td><input type="checkbox" name="genre" value="Horror">공포</td>
<td><input type="checkbox" name="genre" value="Romance">로맨스</td>
<td><input type="button" onclick="search()" value="검색"></td>
</tr> 
</table>
</form>


<table border="">
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>장르</td>
		<td>개봉일</td>
		<td>종료일</td>
		<td>작성일</td>
		<%if(/* a.equals("first")&&res.getGrade()!=null&&res.getGrade().equals("admin") */
		res != null && (res.getGrade().equals("pro") || res.getGrade().equals("admin"))){ %>
		<td>삭제</td>
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
		<td><a href="delete.jsp?no=<%=vo.getNo() %>">삭제</a></td>
		<%} %>
	</tr>

<%}
	if(res != null && res.getGrade().equals("pro")){%>
	<tr >	
		<td colspan="7" align="center" >
			<a href="uploadmovieform.jsp">글쓰기</a>
		</td>
	</tr>
	<%} %>
</table>
