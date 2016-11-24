<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>很多突发状况</title>
</head>
<body>
<jsp:useBean id="status" class="shixun16.Status" scope="session"/>
<h1>注意！！！事关重大！！！小心回答！！！</h1>
<form action="showInfo.jsp" method="post">
    <%
       String test = status.getzhuangTai().get(0);//取出问题
       ArrayList<String> xuanXiang = status.getTiMu().get(test);//根据问题取出选项
          out.println("<h1>"+test+"想好怎么回答了吗？</h1>");
//显示出所有选项
for(int i=0;i<5;i++){
	String neiRong=xuanXiang.get(i);
	String num=String.valueOf(i);
	out.print("<p><input type='radio' name='phone'value='+"+num+"'>"+neiRong+"</input></p>");
	
}
%>
<button>提交</button>
</form>
</body>
</html>