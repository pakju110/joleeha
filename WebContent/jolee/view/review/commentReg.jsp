<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set value="${no }" var="no"/>
	<script type="text/javascript">
	alert('��ϵǾ����ϴ�.');
	location.href = 'detail.jsp?no=${no}';
	</script>
