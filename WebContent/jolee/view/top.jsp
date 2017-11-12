<%@page import="req1.MemberVO"%>
<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="gnb">

<jsp:include page="${loginPage }"/> 

<c:forEach items="${top}" var="im" >
	<a href="../../${im.key }/first/index.jsp" class="link">${im.value }</a>
</c:forEach>
	<div class="btm_link">
		<c:forEach items="${menuList}" var="metoo">
			<c:choose>
				<c:when test="${metoo.key=='cc'||metoo.key=='1n1'||metoo.key=='apply'}">
					<p>
						<a href="../${metoo.key }/index2.jsp">${metoo.value }</a>
					</p>
				</c:when>
				<c:otherwise>
					<p>
						<a href="../${metoo.key }/index.jsp">${metoo.value }></a>
					</p>
		
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</div>
</div>