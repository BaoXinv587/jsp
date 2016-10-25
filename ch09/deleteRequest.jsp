<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除数据库里面的信息</title>
</head>
<body>
    <form action="delete.jsp" method="post">
             <p>请输入你要删除的数据的学号：</p>
             <p>学号:<input type="text" name="id"></p>
             <button type="submit">提交</button>
    </form>
</body>
</html>