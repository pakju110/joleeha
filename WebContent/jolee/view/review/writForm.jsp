

<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<form action="writReg.jsp" enctype="multipart/form-data" method="post">
	<table border="1">
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" /></td>
		</tr>
		<tr>
			<td>영화제목</td>
			<td><input type="text" name="movie" /></td>
		</tr>
		<tr>
			<td>장르</td>
			<td><input type="checkbox" name="genre" value="action" />액션 <input
				type="checkbox" name="genre" value="horror" /> 공포 <input
				type="checkbox" name="genre" value="romance" />로맨스</td>
		</tr>
		<tr>
			<td>별점 선택</td>
			<td><select name="star">
					<option value="1">★</option>
					<option value="2">★★</option>
					<option value="3">★★★</option>
					<option value="4">★★★★</option>
					<option value="5">★★★★★</option>
			</select></td>
		</tr>
		<tr>
			<td>파일</td>
			<td><input type="file" name="pic" /></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea name="content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="글쓰기" /><a
				href="index.jsp">목록</a></td>
		</tr>
	</table>
</form>