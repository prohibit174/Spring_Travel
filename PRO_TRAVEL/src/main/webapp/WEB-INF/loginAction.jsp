<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function linkToOpener(URL){
	if(window.opener && !window.opener.closed)
		window.opener.location = URL;
		window.close();
}

window.onload = linkToOpener('home.main?u_id=${users.u_id}');
</script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form id="loding" >
로딩중...
</form>
</body>
</html>