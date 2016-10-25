<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询数据库里面的信息页面</title>
</head>
<body>
    <form action="insert.jsp" method="post">
             <p>请输入你要插入的数据：</p>
             <p>学号:<input type="text" name="id"></p>
             <p>姓名:<input type="text" name="name"></p>
             <p>年龄:<input type="text" name="age"></p>
             <p>专业:<input type="text" name="zy"></p>
             <button type="submit">提交</button>
    </form>
</body>
</html>