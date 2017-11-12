
<%@page import="req1.MemberDAO"%>
<%@page import="req1.MemberVO"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%
	HashMap<String, String[]> map = new HashMap();

	MemberVO vo = new MemberVO();
	MemberDAO dao = new MemberDAO();

	vo.setId(request.getParameter("id"));
	vo.setPw(request.getParameter("pw"));
	MemberVO res = new MemberDAO().login(vo);
	String url = "loginForm.jsp";
	String msg = "id와 pw가 일치하지 않습니다.";

	if (res != null) {
		//url = "../../../cateCompany/center/first/index.jsp?memmm=" + res.getName();
		url = "../../../jolee/movie/first/index.jsp?";
		msg = res.getName() + "님 로그인 하셨습니다.";

		session.setAttribute("mem", res.getName());

	}
	session.setAttribute("id", request.getParameter("id"));
%>

<script type="text/javascript">
	alert('<%=msg%>');
	location.href="<%=url%>";
</script>

 --%>