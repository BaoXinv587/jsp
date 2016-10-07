<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<jsp:useBean id="Zeng" scope="page" class="bookshop.useBeanym" />
<jsp:setProperty name="Zeng" property="*" />
<title>在线购书系统-处理登录页面</title>
</head>
<body>
<%
    if(Zeng.getPassword() ==null||Zeng.getUserName()==null){
%>
    	<jsp:forward page="bookShopLogin.jsp"/>
<%    	
    }
    if(Zeng.getUserName().equals("QQ")){
    	  if(Zeng.getPassword().equals("123")){
%>
    	<jsp:forward page="bookShop.jsp">
    	    <jsp:param value="<%=Zeng.getUserName() %>" name="userName"/>
    	</jsp:forward>
<%
    }else{
%>
           <jsp:forward page="bookShopLogin.jsp"/>
<%
    }
    }else{
%>
           <jsp:forward page="bookShopLogin.jsp"/>
<%
    }
%>
</body>
</html>