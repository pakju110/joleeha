
<%@page import="java.util.ArrayList"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set value="${data }" var="vo" />
<c:set value="${cate }" var="c" />
<c:set value="${scrapdate }" var="scvo" />
<c:if test="${memlogin != null }"><c:set value="${memlogin }" var="vo2" />
</c:if>
<table border="">
	<tr>
		<td>title</td>
		<td>${ vo.title}</td>
	</tr>
	<tr>
		<td>별점</td>
		<td><c:forEach begin="1" end="${vo.star}" step="1">
			★
			</c:forEach></td>
	</tr>
	<tr>
		<td>ganre</td>
		<td>${ vo.genre}</td>
	</tr>
	<tr>
		<td>id</td>
		<td>${ vo.id}</td>
	</tr>
	<tr>
		<td>content</td>
		<td><c:if test="${vo.sysfile != null }">
				<img src="../../file/${vo.sysfile}" alt="">
				<br />
				<a
					href="download.jsp?sysfile=${ vo.sysfile}&orifile=${vo.orifile}">${vo.orifile}</a>
				<br />
			</c:if>
			${vo.content }
		</td>
	</tr>
	<tr>
		<c:if test="${vo2 != null&& (vo2.id== vo.id || vo2.grade == 'admin') && vo2.grade != 'black'}"> 
			<td colspan="2" align="right"><a
				href="delcheck.jsp?no=${vo.no}">삭제</a><a href="index.jsp">list</a>
			</td>
		</c:if> 
	</tr>
</table>

<div class="bx_cmt">
 
	<c:forEach items="${commnetdata}" var="cmt">
		<div class="cmt">
			<div>${cmt.id}</div>
			<div>${cmt.content}</div>
			<p>${cmt.regDate}
			<c:if test="${memlogin != null }">
			<c:if test="${ vo2 != null &&( vo2.id == cmt.id || vo2.grade == 'admin' ) && vo2.grade != 'black'}">
					<a href="deletecmt.jsp?cno=${cmt.cno }&no=${ cmt.no}">삭제</a>
				</c:if>
				</c:if>
			</p>
			
		</div>
	</c:forEach>

	<c:if test="${memlogin != null  && vo2.grade != 'black'}">

		<form action="commentReg.jsp" method="post">
			<div class="writ_comment">
				<textarea name="content"></textarea>
			</div>
			<div align="center">
				<input type="submit" value="댓글쓰기">
			</div>
		</form>
	</c:if>
	<c:if test="${memlogin != null  && vo2.grade != 'black'}">
		<c:choose>
			<c:when test="${scvo==null || scvo.id == null }">
				<a href="scrap.jsp?cate=${vo.cate}&no=${vo.no}">스크랩<img alt="하트" src="../../img/icon_off_08.gif"/></a>

			</c:when>
			<c:otherwise>
				<a href="delscrap.jsp?cate=${vo.cate}&no=${vo.no}">스크랩취소<img alt="하트" src="../../img/icon_on_08.gif"/></a>
			</c:otherwise>
		</c:choose>
	</c:if>
</div>
