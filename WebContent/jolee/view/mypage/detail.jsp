<%@page import="lee.OneonOneVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set value="${data }" var="vo" />
<c:set value="${cate }" var="c" />


<table border="">
	<tr>
		<td>제목</td>
		<td>${vo.title }</td>
	</tr>
	<tr>
		<td>문의내역</td>
		<td>${vo.content }</td>
	</tr>
	<tr>
		<td>게시일자</td>
		<td>${vo.regdate }</td>
	</tr>



	<c:choose>
		<c:when test="${c=='1n1'}">
			<tr>
				<td colspan="2" align="right"><a href="index2.jsp">목록</a></td>
			</tr>
		</c:when>
		<c:otherwise>
			<tr>
				<td colspan="2" align="right"><a href="index.jsp">목록</a></td>
			</tr>
		</c:otherwise>
	</c:choose>
</table>
<c:if test="${c=='1n1'}">
	<c:forEach items="${commnetdata}" var="cmt">
		<div class="cmt">
			<div>${cmt.id}</div>
			<div>${cmt.content}</div>
			<p>${cmt.regDate}
				<c:if test="${memlogin != null }">
					<c:if test="${ memlogin != null &&(memlogin.grade == 'admin' )}">
						<a href="deletecmt.jsp?cno=${cmt.cno }&no=${ cmt.no}">삭제</a>
					</c:if>
				</c:if>
			</p>
		</div>
	</c:forEach>
	<c:if test="${memlogin.grade == 'admin'}">
		<form action="commentReg.jsp" method="post">
			<div class="writ_comment">
				<textarea name="content"></textarea>
			</div>
			<div align="center">
				<input type="submit" value="댓글쓰기">
			</div>
		</form>
	</c:if>
</c:if>