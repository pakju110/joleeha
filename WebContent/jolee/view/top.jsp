<%@page import="req1.MemberVO"%>
<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${memlogin}" var="res" scope="session" />
<%
	request.setCharacterEncoding("euc-kr");
%>
${res.grade==admin}
<br>
${res!=null }
<br>


<%-- 

<div class="gnb">
	
	

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
</div> --%>

	<div class="top">
		<div class="logo_bx"><img src="../../img/logo.gif" alt="로고"/></div>
		<div class="login_bx"><jsp:include page="${loginPage }" /></div>
		<ul>
			<li><a href="../../movie/first/index.jsp">영화정보</a>
				<ul>
					<li><a href="../../movie/first/index.jsp">전체영화</a></li>
					<li><a href="../../movie/ing/index.jsp">상영영화</a></li>
					<li><a href="../../movie/cc/index.jsp">추천영화</a></li>
				</ul></li>
			<li><a href="../../review/first/index.jsp">리뷰</a>
				<ul>
					<li><a href="../../review/first/index.jsp">전문가리뷰</a></li>
					<li><a href="../../review/user/index.jsp">네티즌리뷰</a></li>
				</ul></li>
			<li><a href="../../movie/first/index.jsp">공지사항</a>
				<ul>
					<li><a href="../../notice/first/index.jsp">공지사항</a></li>
					<li><a href="../../notice/event/index.jsp">할인정보</a></li>
				</ul>
			</li>
			<c:if test="${res.grade=='admin'}">
				<li><a href="../../manager/first/index.jsp">관리자페이지</a>
					<ul>
						<li><a href="../../manager/first/index.jsp">회원전체보기</a></li>
						<li><a href="../../manager/apply/index2.jsp">전문가신청목록</a></li>
						<li><a href="../../manager/violate/index.jsp">신고글</a></li>
					</ul>
				</li>
			</c:if>
			<c:if test="${res.grade=='user' ||res.grade=='pro'}">
				<li><a href="../../mypage/first/index.jsp">관리자페이지</a>
					<ul>
						<li><a href="../../mypage/first/index.jsp">회원정보</a></li>
						<li><a href="../../mypage/history/index.jsp">내가 쓴 글</a></li>
						<li><a href="../../mypage/1n1/index2.jsp">1:1문의</a></li>
						<li><a href="../../mypage/sc/index.jsp">스크랩목록</a></li>
					</ul>
				</li>
			</c:if>
		</ul>
	</div>