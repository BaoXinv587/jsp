<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<sql:setDataSource var="snapshot"
		driver="com.microsoft SQL server/jdbc.Driver"
		url="jdbc:myserver://locahost:3306/lol" user="sa" password="" />

	<sql:query dataSource="${snapshot }" sql="select * from hero"
		var="result" />

	<table border="1" width="100%">
		<tr>
			<th>英雄id</th>
			<th>英雄名字</th>
			<th>英雄昵称</th>
		</tr>
		<c:forEach var="row" items="${result.rows }">
			<tr>
				<td><c:out value="${row.id}" /></td>
				<td><c:out value="${row.name}" /></td>
				<td><c:out value="${row.nick_name}" /></td>
			</tr>
		</c:forEach>
	</table>

		<sql:udpate dataSource="${snapshot}" var="count">
			INSERT INTO hero(name,nick_name) VSLUES('盖伦','德玛西亚');

		<c:set var="hero_id" value="20" />

		<sql:update dataSource="${snapshot}" var="count">
			DELETE FROM hero WHERE id = ?
		<sql:param value="${hero_id}" /></sql:update>
	</sql:udpate>
</body>
</html>