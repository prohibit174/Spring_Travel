<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">





<html>
<head>
<title>로그인 폼</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<meta name ="Generator" content="k2webtech">
<meta name ="author" content="main">
<script type="text/javascript">

function linkToOpener(URL){
	if(window.opener && !window.opener.closed)
		window.opener.location = URL;
		window.close();
}
</script><noscript></noscript>
<script type="text/javascript" src="${pageContext.request.contextPath}/JS/loginPopup/login_success.js"></script>

</head>




<script type="text/javascript" src="${pageContext.request.contextPath}/JS/UsersJS/loginCheck.js"></script>
<script language="javascript">

document.domain = "kornu.ac.kr";
</script><noscript></noscript>
<script type="text/javascript">



</script>

<body>
<form  name=mem_form action="loginAction.main" method="post">
<input type="hidden" name="command" value="" />
<input type=hidden name=client_id value="main">
<input type=hidden name="return_url" value="wizipsi.kornu.ac.kr/user/main/e_knu/e_knu01.html">
<input type=hidden name="work" value="">
<table width="350" height="270" border="0" cellpadding="5" cellspacing="1" bgcolor="#b7b6b6" summary="쨌�짹��� ����쨘챠1">
<tr>
<td bgcolor="#FFFFFF"><table width="100%" border="0" cellpadding="10" cellspacing="1" bgcolor="#b7b6b6" height="140" summary="쨌�짹��� ����쨘챠2">
<tr>
<td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0" summary="쨌�짹��� ����쨘챠3">

	<tr>
		<td height="30">
			<img src="./images/loginPopupImages/log_title.gif" width="114" height="13" style="padding-left:10px" alt="쨌�짹��� �짝쨍챰" longdesc="">
		</td>
	</tr>

<tr>
<td align="center"><img src="./images/loginPopupImages/log_gradline.gif" width="208" height="8" alt="�� ��쨔��철" longdesc=""></td>
</tr>
<tr>
<td height="150"><table width="190" border="0" align="center" cellpadding="1" cellspacing="0" summary="쨌�짹��� ��쨌� ����쨘챠">
<tr>
<td style='font-family:"Verdana", "쨉쨍쩔챵";font-size: 12px;color: 4e4e4e;letter-spacing: -0.5px; vertical-align:-13px;'>ID :</td>
<td><input name="u_id" id="u_id" size=10 maxlength=20 type="text" style='width:90px;height:20px;' ></td>
<td rowspan="2" align="right"><input type="submit"  id="login_button" value="로그인"></td>
</tr>
<tr>
<br>
<td style='font-family:"Verdana", "쨉쨍쩔챵";font-size: 12px;color: 4e4e4e;letter-spacing: -0.5px; vertical-align:-13px;'>PW :</td>
<td><input type="password" name="u_pwd" id= "u_pwd" size=10 class=frm maxlength=20  style='width:90px;height:20px;'></td>
</tr>
</table>
<table width="220" height="50" border="0" align="center" cellpadding="3" cellspacing="0" summary="쨌�짹��� 쨔철�째 ����쨘챠">
<tr>

<td width="54"><a href="javascript:linkToOpener('JoinForm.users')"><img src="./images/loginPopupImages/log_btn_join.gif" width="53" height="20" onClick="jf_join();" onkeypress="if(event.keycode==13)jf_join();" alt="�쨍쩔첩 째징�� 쨔철�째" longdesc="" style="cursor:hand"></a></td>
<td width="124"><img src="./images/loginPopupImages/log_btn_searchpass.gif" width="108" height="20" onClick="javascript:jf_findPass();" onkeypress="if(event.keycode==13)jf_findPass();" alt="쨘챰쨔�쨔첩�짙 째�쨩철 쨔철�째" longdesc="" style="cursor:hand"></td>

</tr>

</table></td>
</tr>
</table></td>
</tr>
</table></td>
</tr>
</table>
</form>
<div id  = "frames"></div>
</body>
</html>
