<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

	<script type="text/javascript">
	alert('��ϵǾ����ϴ�.');
	location.href = 'detail.jsp?no=<%=Integer.parseInt((String)session.getAttribute("no"))%>';
	</script>
