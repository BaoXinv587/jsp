c<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="shixun16.GirlFriend" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>接受审判吧少年！</title>
</head>
<body>
<%
   GirlFriend gf=(GirlFriend)session.getAttribute("myGirlFriend");
   String phone=request.getParameter("phone");
   
   int shengQi = gf.getShengQi();
   int ai = gf.getAi();
   
   if(phone.equals("0")){
	   shengQi=shengQi+10;
   }else if(phone.equals("1")){
	   shengQi = shengQi+30;
   }else if(phone.equals("2")){
	   ai=ai+20;
   }else {
	   ai =ai +10;
	   shengQi = shengQi + 10;
   }
   gf.setShengQi(shengQi);
   gf.setAi(ai);
   
   if(gf.getShengQi()> 60){
	   out.print("<h1>恭喜你，你已经 go die了</h1>");
   }else{
	   out.print("<h1>少年你要小心，女朋友的怒气已达到"+gf.getShengQi()+"</h1>");
	   
   if(gf.getAi()<60)
	   out.print("<h1>哼，又惹你男朋友生气了~</h1>");
   	
   else if(gf.getAi()>60){
	   out.print("<h1>你男朋友很喜欢你啊~</h1>");
   }
   if(gf.getShengQi()>90){
	   out.print("<h1>你的男朋友对你很不满意~</h1>");
   }
   
   out.print("<p><a href='status.jsp'>来啊继续测试啊</a></p>");
   }
   %>
</body>
</html>