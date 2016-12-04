<%@page import="com.lol.model.Hero"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Hero hero = (Hero)request.getAttribute("hero");
	%>
	<%=hero.getName() %>
	<%=hero.getNickName() %>
	<img src="http://localhost:8080/lol/<%=hero.getImage() %>" />
	
	<a href="http://localhost:8080/lol/hero?id=<%=hero.getId() %>&is_change=true">修改 </a>
</body>
</html>