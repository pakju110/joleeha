<%-- <%@page import="req.MemberDAO"%>
<%@page import="req.MemberVO"%> --%>
<%@page import="movie.ComentDAO"%>
<%@page import="movie.ReviewDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script type="text/javascript">
	if(window.confirm("삭제하시겠습니까?")){
		location.href = 'delete.jsp?no=<%=request.getParameter("no")%>';
	}else{
		location.href = 'detail.jsp?cate=<%=(String)session.getAttribute("cate") %>&no=<%=request.getParameter("no")%>';
	}
</script>
	<%-- 
	
<jsp:forward page="../../view/template.jsp"></jsp:forward>
 --%>