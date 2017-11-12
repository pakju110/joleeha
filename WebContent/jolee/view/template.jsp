<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../css/default.css">
<link rel="stylesheet" type="text/css" href="../../css/pc.css">

</head>
<body>
<div class="wrap">
	<div class="header">
		<div class="top"><jsp:include  page="top.jsp"/></div>
	</div>
	<div class="content"><jsp:include page="${serviceUrl}"/></div>
	<div class="footer"><jsp:include page="bottom.jsp"/></div>
</div>
</body>
</html>