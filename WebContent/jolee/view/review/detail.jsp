<%@page import="movie.ScrapDAO"%>
<%@page import="movie.ScrapVO"%>
<%@page import="req1.MemberVO"%>
<%@page import="movie.ComentVO"%>
<%@page import="movie.ComentDAO"%>
<%@page import="movie.ReviewVO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	
	ReviewVO vo = (ReviewVO)request.getAttribute("data");
	
	MemberVO vo2 = (MemberVO)session.getAttribute("memlogin");
	int no = Integer.parseInt((String)session.getAttribute("no"));
	String cate = (String)session.getAttribute("cate");
	request.setCharacterEncoding("euc-kr");
	ScrapVO scvo = new ScrapDAO().detail(vo2.getId(),cate,Integer.parseInt(request.getParameter("no")));
%>

<table border="">
	<tr>
		<td>title</td>
		<td><%=vo.getTitle() %></td>
	</tr>
	<tr>
		<td>º°Á¡</td>
		<td><%for(int i=0; i<vo.getStar();i++){%>¡Ú<%} %></td>
	</tr>
	<tr>
		<td>ganre</td>
		<td><%=vo.getGenre() %></td>
	</tr>
	<tr>
		<td>id</td>
		<td><%=vo.getId() %></td>
	</tr>
	<tr>
		<td>content</td>
		<td><%=vo.getContent() %>
		<% if(vo.getOrifile() != null){ %>
		<br/>
		<a href="download.jsp?Sysfile=<%=vo.getSysfile() %>&Orifile=<%=vo.getOrifile() %>" ><%=vo.getOrifile() %></a><br/>
		<%} %>
		</td>
	</tr>
	<tr>
		
		<%if( vo2 != null && vo2.getId().equals(vo.getId())){ %>
		<td colspan="2" align="right">
			<a href="delcheck.jsp?no=<%=vo.getNo() %>">»èÁ¦</a><a href="index.jsp">list</a>
		</td>
		<%} %>
	</tr>
</table>

<div class="bx_cmt">

	<%ComentDAO cmt = new ComentDAO();

		for (ComentVO cvo : cmt.list(cate, no)) {
			%>
			<div class="cmt">
				<div><%=cvo.getId() %></div>
				<div><%=cvo.getContent() %></div>
				<p><%=cvo.getRegDate()%>
				<%if( vo2 != null && (vo2.getId().equals(cvo.getId())||vo2.getGrade().equals("admin"))){ %>
				<a href="deletecmt.jsp?cno=<%=cvo.getCno()%>&no=<%=cvo.getNo()%>">»èÁ¦</a>
				<%} %></p>
			</div>
			
			<%
		}if( vo2 != null){
	%>

	<form action="commentReg.jsp" method="post">
		<div class="writ_comment">
			<textarea name="content"></textarea>
		</div>
		<div align="center">
			<input type="submit" value="´ñ±Û¾²±â">
		</div>
	</form>
	<%if(scvo == null ||scvo.getId() == null){  %>
	<a href="scrap.jsp?cate=<%=vo.getCate()%>&no=<%=vo.getNo()%>">½ºÅ©·¦</a>
	
	<%}else{
		
		%><a href="delscrap.jsp?cate=<%=vo.getCate()%>&no=<%=vo.getNo()%>">½ºÅ©·¦Ãë¼Ò</a><%
	}
}
%>
	
</div>
