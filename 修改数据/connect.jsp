<%@ page language="java" contentType="text/html; charset=utf-8" import="java.sql.*,java.io.*"%>
<%@ page %>
<html>
<body>
<table>
<%
 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
       String url="jdbc:sqlserver://localhost:1433;DatabaseName=xs";
       Connection conn=java.sql.DriverManager.getConnection(url,"bao","");
       Statement stmt=conn.createStatement();
       ResultSet rs = stmt.executeQuery("select * from Student");
       out.println("<table>");
       
       while(rs.next())
       {
    	   out.println("<tr>");
    	   out.println("<td><a href='modify.jsp?id="+rs.getInt("id")+"'>学号</a></td>");
    	   out.println("<td>"+rs.getString("name")+"</td>");
    	   out.println("<td>"+rs.getInt("age")+"</td>");
    	   out.println("<td>"+rs.getString("major")+"</td>");
           out.println("</tr>");
  }
     
       rs.close();
       stmt.close();
       conn.close();
       
       %>
  <%= session.getAttribute("info") %>
    </table>
       
</body>
</html>