<%-- <%@page import="req.MemberDAO"%>
<%@page import="req.MemberVO"%> --%>
<%@page import="movie.ScrapDAO"%>
<%@page import="req1.MemberVO"%>
<%@page import="movie.ComentDAO"%>
<%@page import="movie.ReviewDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
int no = Integer.parseInt(request.getParameter("no"));
String cate = request.getParameter("cate");
System.out.println("no="+no);
MemberVO vo3 = (MemberVO)session.getAttribute("memlogin");

response.sendRedirect("detail.jsp?no="+no);
%>
<script type="text/javascript">
	if(window.confirm("��ũ���Ͻ� ���Դϴ�. ��ũ���� ����Ͻðڽ��ϱ�?")){
		
		
		
		<%
		new ScrapDAO().delete(vo3.getId(),cate,no);
		
		%>
		
		
	}else{
		
	}
	location.href = 'detail.jsp?no=<%=no%>';
</script>
	<%-- 
	
<jsp:forward page="../../view/template.jsp"></jsp:forward>
 --%>