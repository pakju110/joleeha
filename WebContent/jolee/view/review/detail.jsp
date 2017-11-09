<%@page import="movie.ComentVO"%>
<%@page import="movie.ComentDAO"%>
<%@page import="movie.ReviewVO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	
	ReviewVO vo = (ReviewVO)request.getAttribute("data");

	int no = Integer.parseInt((String)session.getAttribute("no"));
	String cate = (String)session.getAttribute("cate");
	request.setCharacterEncoding("euc-kr");
%>
<%=(String)session.getAttribute("cate") %>
<table border="">
	<tr>
		<td>title</td>
		<td><%=vo.getTitle() %></td>
	</tr>
	<tr>
		<td>id</td>
		<td><%=vo.getId() %></td>
	</tr>
	<tr>
		<td>content</td>
		<td><%=vo.getContent() %></td>
	</tr>
	<tr>
		<td colspan="2" align="right"><a href="delete.jsp?no=<%=vo.getNo() %>">삭제</a><a href="index.jsp">list</a></td>
	</tr>
</table>
<div class="bx_cmt">
<%
	ComentDAO cmt = new ComentDAO();


	%>
	<%
		for (ComentVO cvo : cmt.list(cate, no)) {
			%>
			<div class="cmt">
				<div><%=cvo.getId() %></div>
				<div><%=cvo.getContent() %></div>
				<p><%=cvo.getRegDate()%><a href="deletecmt.jsp?cno=<%=cvo.getCno()%>&no=<%=cvo.getNo()%>">삭제</a></p>
			</div>
			
			<%
		}
	%><%
	
%>
	<form action="commentReg.jsp" method="post">
		<div class="writ_comment">
			<textarea name="content"></textarea>
		</div>
		<div align="center">
			<input type="submit" value="댓글쓰기">
		</div>
	</form>
	<a href="scrap.jsp?cate=<%=vo.getCate()%>&no=<%=vo.getNo()%>">스크랩</a>
</div>

