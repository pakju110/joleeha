<%@page import="req1.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${memlogin}" var="vo" scope="session"/>

<c:set value="" var="memId"/>

<c:if test="${param.memId !=null}">
<c:set value="${param.memId }" var="memId"/>
</c:if>

<c:choose>
<c:when  test="${vo!=null }">
	${memlogin.name } 님 안녕하세요 !


<a href="../../login/logout.jsp">로그아웃</a>	
</c:when>
<c:otherwise>
	<script type="text/javascript">
		function frmChange(){
		
			frm.action="../../join/first/index.jsp";
			frm.submit();
		}
	</script>

<form action="../../login/loginReg.jsp" name = "frm">
	<input type="hidden" name="goUrl" value="${nowUrl }" />
	아이디:<input type="text" name="memId" value="${memId }"/>
	비밀번호:<input type="password" name="memPw" />
	<input type="submit" value="로그인" />
	<input type="button" value="회원가입" onclick="frmChange()" />
	
</form>
</c:otherwise>
</c:choose>

