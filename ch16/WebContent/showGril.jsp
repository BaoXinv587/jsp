<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>展示男朋友页面</title>

<jsp:useBean id="myGirlFriend" class="shixun16.GirlFriend"  scope="session"/>

<jsp:setProperty property="*" name="myGirlFriend"/>

</head>
<body>
<p>男朋友的颜值：<jsp:getProperty name="myGirlFriend" property="yanZhi"/></p>
<p>男朋友的体重：<jsp:getProperty name="myGirlFriend" property="tiZhong"/></p>
<p>男朋友的身高：<jsp:getProperty name="myGirlFriend" property="shenGao"/></p>
<p>男朋友的怒值：<jsp:getProperty name="myGirlFriend" property="shengQi"/></p>
<p>男朋友的爱值：<jsp:getProperty name="myGirlFriend" property="ai"/></p>
<p>男朋友的好感度：<jsp:getProperty name="myGirlFriend" property="haogan"/> </p>
<p><a href="status.jsp">想好了吗？那么！开始 测试！！！</a></p>
</body>
</html>