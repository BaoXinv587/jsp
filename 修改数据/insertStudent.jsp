<%@ page contentType="text/html; charset=gb2312"language="java" import="java.sql.*,java.io.*"%>
   <%@ page  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
       Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
       String url="jdbc:sqlserver://localhost:1433;DatabaseName=xs";
       Connection conn=java.sql.DriverManager.getConnection(url,"bao","");
       
       String sql="insert into student values(?,?,?,?)";
       // String sql="delete from student where=?";
       PreparedStatement st=conn.prepareStatement(sql);
       
       String id=request.getParameter("id");
       String name=request.getParameter("name");
       String age=request.getParameter("age");
       String major=request.getParameter("major");
       
       st.setInt(1,Integer.parseInt(id));
       st.setString(2,name);
       st.setInt(3,Integer.parseInt(age));
       st.setString(4,major);
       st.executeUpdate();
       System.out.println(st.toString());
       
       st.close();
       conn.close();
       %>
       用户已经插入
</body>
</html>