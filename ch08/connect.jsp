<%@ page language="java" contentType="text/html; charset=gb2312" 
    import="java.sql.*,java.io.*" %>
<%@ page %>


<html>
<body>
<%
  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
  String url="jdbc:sqlserver://localhost:1433;DatabaseName=software";

 Connection conn=java.sql.DriverManager.getConnection(url,"sa","seasonflower");
 Statement stmt=conn.createStatement();
 ResultSet rs=stmt.executeQuery("select * from student");
 
 
 out.println("<table>");
 while(rs.next()){
	 out.println("<tr>");
	 out.println("<td>"+rs.getString("id")+"</td>");
	 out.println("<td>"+rs.getString("name")+"</td>");
	 out.println("<td>"+rs.getInt("age")+"</td>");
	 out.println("<td>"+rs.getString("major")+"</td>");
	 out.println("</tr>");
	 	 
 }

out.println("</table>");

%>

<h1>°´ÕÕÄêÁä²éÑ¯:</h1>
<%
   int age=Integer.parseInt(request.getParameter("age"));
  
String sql="select * from student where age =?";
PreparedStatement st=conn.prepareStatement(sql);
st.setInt(1,age);
rs = st.executeQuery();

out.println("<table>");
while(rs.next()){
		 out.println("<tr>");
		 out.println("<td>"+rs.getInt("id")+"</td>");
		 out.println("<td>"+rs.getString("name")+"</td>");
		 out.println("<td>"+rs.getInt("age")+"</td>");
		 out.println("<td>"+rs.getString("major")+"</td>");
		 out.println("</tr>");
		 	 
	 }

	out.println("</table>");


rs.close();
stmt.close();
conn.close();

%>



</body>
</html>