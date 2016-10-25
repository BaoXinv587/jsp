<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除数据页面</title>
</head>
<body>
    <%
      request.setCharacterEncoding("UTF-8");
      response.setCharacterEncoding("UTF-8");
      response.setContentType("text/html; charset=UTF-8");
    %>
    <h1>数据库的所有内容：</h1>
    <%
       Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
       String url="jdbc:sqlserver://localhost:1433;DatabaseName=xs";
       Connection con=DriverManager.getConnection(url,"bao","");
       Statement z=con.createStatement();
       ResultSet m=z.executeQuery("select * from studnt05");
       while(m.next()){
    	   out.print(m.getString("id"));
    	   out.print(m.getString("name"));
    	   out.print(m.getInt("age")+"  ");
    	   out.print(m.getString("major"));
    	   out.print("</br>");
       }
       %>
       <h1>删除信息后：</h1>
       <%
       String cx="delete from studnt05 where id=?";
       PreparedStatement zm=con.prepareStatement(cx);
       String id=request.getParameter("id");
       zm.setString(1,id);
       zm.executeUpdate();
       System.out.print(zm.toString());
       m=z.executeQuery("select * from studnt05");
       while(m.next()){
    	   out.print(m.getString("id"));
    	   out.print(m.getString("name"));
    	   out.print(m.getInt("age")+"  ");
    	   out.print(m.getString("major"));
    	   out.print("</br>");
       }
       m.close();
       zm.close();
       z.close();
       con.close();
    %>
        <p>删除成功</p>
</body>
</html>