<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"  %>
<html>
<head>	
	<title>Home</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<link rel="stylesheet" href="resources/css/com/common.css"/>
	<style type="text/css">		
		.linkExample{list-style-type:upper-roman;}		
	</style>
</head>
<body>
<div>
	<ul class="linkExample">
		<c:forEach items="${menu}"  var="item">
			<li><a href="${item.url}">${item.title}</a></li>	
		</c:forEach>
	</ul>
</div>
</body>
</html>
