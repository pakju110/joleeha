<%-- <%@page import="req.MemberDAO"%>
<%@page import="req.MemberVO"%> --%>
<%@page import="java.util.ArrayList"%>
<%@page import="req1.MemberVO"%>
<%@page import="movie.ScrapVO"%>
<%@page import="movie.ScrapDAO"%>
<%@page import="movie.ComentDAO"%>
<%@page import="movie.ReviewDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%-- <%
int no = Integer.parseInt(request.getParameter("no"));
String cate = request.getParameter("cate");

MemberVO vo3 = (MemberVO)session.getAttribute("memlogin");
String id = vo3.getId();

ScrapDAO dao = new ScrapDAO();
ScrapVO re = new ScrapVO();
ArrayList<ScrapVO> mems = dao.list(id);

for(ScrapVO vo : mems) {
	if(vo.getId().equals(id)&&vo.getCate() == cate&&vo.getNo() == no){
		response.sendRedirect("delscrap.jsp?no="+no+"&cate="+cate);
		break;
	}else{
		re.setCate(cate);
		re.setNo(no);
		re.setId(vo3.getId());
		dao.insert(re);
		response.sendRedirect("detail.jsp?no="+no);
		
	}
} 






%>  --%>
<%
int no = Integer.parseInt(request.getParameter("no"));
String cate = request.getParameter("cate");

MemberVO vo3 = (MemberVO)session.getAttribute("memlogin");
ScrapVO re = new ScrapVO();

re.setCate(cate);
re.setNo(no);
re.setId(vo3.getId());//�α��ξ��̵� �޾ƿ���

ScrapDAO dao = new ScrapDAO();
dao.insert(re);
System.out.println("insert"+vo3.getId()+""+ cate+""+ no);

response.sendRedirect("detail.jsp?no="+no);
%>
	<%-- 
	
<jsp:forward page="../../view/template.jsp"></jsp:forward>
 --%>