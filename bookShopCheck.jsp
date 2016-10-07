<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <jsp:useBean id="cart" scope="session" class="bookshop.BookShopBean"/>
    <jsp:setProperty name="cart" property="*" />
<title>已购书信息</title>
</head>
<body>
         <%
    	      cart.processRequest(request);
    	 %>
    	 <br>您已选购的书有：
    	 <ol>
    	 	<%
    	 	   String[] items=cart.getItems();
    	 	   for(int i=0;i<items.length;i++){
    	 	%>
    	 	<li><%=items[i]%></li>
    	 	<%
    	 	      }
    	 	 %>
    	 </ol>
    	 <br>
    	 <hr>
    	 <%@include file="bookShop.jsp"%>
</body>
</html>