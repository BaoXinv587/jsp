<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>在线购书系统</title>
</head>
<body bgcolor="CCCFFF">
    <form action="bookShopCheck.jsp" method="get">
    <hr>
                  欢迎访问本网站！
    <hr>
                 请选择要购买的图书：
    <hr>
    <select name="item">
    <option>《Java 程序设计与项目实训教程》</option>
    <option>《Java 程序设计技术教程》</option>
    <option>《Java 程序设计与项目实训教程》</option>
    <option>《Java 程序设计与项目案例教程》</option>
    <option>《Struts2+Hibernate框架技术教程》</option>
    <option>
          《Web 框架技术(Struts2+Hibernate+Spring3）教程》
    </option>
    <option>
         《Java Web技术整合应用与项目实战（jsp＋Servlet＋Ｓｔｒｕｔｓ２＋Ｈｉｂｅｒｎａｔｅ＋Ｓｐｒｉｎｇ３）》
   　</option>
   </select>
   <br>
   <hr>
   <input type="submit" name="submit" value="购买"/>
   </form>
   </body>
</html>