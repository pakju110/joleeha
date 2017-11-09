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
re.setId(vo3.getId());//로그인아이디 받아오기

ScrapDAO dao = new ScrapDAO();
ArrayList<ScrapVO> mems = dao.list(vo3.getId());
for(ScrapVO vo : mems){
	if(vo.getCate().equals(cate) && vo.getId().equals(vo3.getId()) && vo.getNo() == no){
		
		dao.delete(vo3.getId(), cate, no);
		System.out.println("delete"+vo3.getId()+""+ cate+""+ no);
		
	}else{
		dao.insert(re);
		System.out.println("insert"+vo3.getId()+""+ cate+""+ no);}
}

response.sendRedirect("detail.jsp?no="+no);
%>
	<%-- 
	
<jsp:forward page="../../view/template.jsp"></jsp:forward>
 --%>