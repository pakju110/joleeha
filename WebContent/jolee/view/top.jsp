<%@page import="java.util.LinkedHashMap"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	LinkedHashMap<String, String> top = (LinkedHashMap<String, String>) request.getAttribute("top");
	LinkedHashMap<String, String> menuList = (LinkedHashMap<String, String>) request.getAttribute("menuList");
 String loginPage = (String) request.getAttribute("loginPage");
%>


<div class="gnb">

<%-- ${ loginPage}
<jsp:include page="${ loginPage}"/>  --%>

<jsp:include page="<%=loginPage%>"/> 


	<%
		for (String key : top.keySet()) {
	%>
	<a href="../../<%=key%>/first/index.jsp" class="link"><%=top.get(key)%></a>
	
	<%
		}
	%>
	<div class="btm_link">
		<%
			for (String key2 : menuList.keySet()) {
			if(key2.equals("cc")||key2.equals("1n1")){
				%>
				<p>
					<a href="../<%=key2%>/index2.jsp"><%=menuList.get(key2)%></a>
				</p>
				<%
			 }else{
		%>
				<p>
			<a href="../<%=key2%>/index.jsp"><%=menuList.get(key2)%></a>
		</p>
		<%
			 } }
		%>
	</div>
</div>