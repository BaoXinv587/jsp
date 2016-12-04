<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>jstl</title>
</head>
<body>

	<h1>生活费</h1>

		<c:set var="sheng" scope="session" value="${400}"/>
			<c:if test="${sheng<500}">
				<h3>我是一个节约的乖孩子，嘿嘿嘿</h3>
			</c:if>
			<c:if test="${sheng>500 }">
				<h3>我是一个节约的好土豪</h3>
			</c:if>
	<hr>
	<hr>
	
	<h1>判断中下旬</h1>
	
		<c:set var="yue" scope="session" value="${12}"/>
			<c:choose>
  				<c:when test="${yue<10 }">
     				上旬
   				</c:when>
				<c:when test="${yue>10 && yue<=20 }">
					中旬
				</c:when>
				<c:otherwise>
					下旬
				</c:otherwise>
			</c:choose>
		
	<hr>
	<hr>
	
	<h1>输出数组的所有值</h1>
	
		<c:forEach var="shu" begin="0" end="18">
			<c:out value="${shu}" />
		</c:forEach>
		
	<hr>
	<hr>
	
	<h1>显示时间</h1>
	
		<c:set var="date" value="<%=new java.util.Date()%>" />
		<fmt:formatDate type="both" value="${date}" />
		
</body>
</html>