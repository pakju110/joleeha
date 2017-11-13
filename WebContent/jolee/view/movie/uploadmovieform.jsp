<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form action="uploadmoviereg.jsp" method="post" enctype="multipart/form-data">
<table border="1">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" /></td>
		</tr>
		<tr>
			<td>개봉일</td>
			<td><input type="text" name="reldate" /></td>
		</tr>
		<tr>
			<td>종료일</td>
			<td><input type="text" name="closedate" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><input type="text" name="content" /></td>
		</tr>
		<tr>
			<td>장르</td>
			<td><input type="checkbox" name="genre" value="action"/>액션
			<input type="checkbox" name="genre" value="horror"/> 공포
			<input type="checkbox" name="genre" value="romance" />로맨스
			<input type="checkbox" name="genre" value="sf" />SF
			<input type="checkbox" name="genre" value="fantasy" />판타지
			<input type="checkbox" name="genre" value="docu" />다큐멘터리
		</td>
		</tr>
		<tr>
			<td>파일</td>
			<td><input type="file" name="file" /></td>
		</tr>
			<tr>
			<td colspan="2" align="center">
			<input type="submit" value="글쓰기" class="sch" />
			<input type="reset" value="초기화" class="sch"/>
			<a href=index.jsp">목록으로</a>
			</td>
		</tr>
	</table>
</form>
</body>
</html>