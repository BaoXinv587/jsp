<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>在线购书系统-登录页面</title>
</head>
<body>
 <div align="center">
	<form action="bookShopLoginCheck.jsp"  method="post">
	   <table border="2">
		<tr>
			<td>用户账号：<input type="text" name="userName" /></td>
		</tr>
		<tr>
			<td>用户密码：<input type="password" name="password" /></td>
		</tr>
		<tr align="center">
		    <td><button type="submit">登录</button></td>
		</tr>
	  </table>
	</form>
</div>
</body>
</html>