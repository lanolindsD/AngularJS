<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"  %>
<html ng-app>
<head>	
	<title>${title}</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<link rel="stylesheet" href="resources/css/com/common.css"/>
	<link rel="stylesheet" href="resources/js/bootstrap/css/bootstrap.css" />
	<style type="text/css">		
	</style>
	
	<script type="text/javascript" src="resources/js/angularjs/angular.min.js"></script>	
</head>
<body>
	<div ng-init="customerList=[{name:'영희', age:25},{name:'순희',age:28}]">
	고객목록
		<ul>
			<li ng-repeat="customer in customerList">
				[{{$index+1}}] 고객이름 : {{customer.name}}, 고객나이 : {{customer.age}}
			</li>
		</ul>
	</div>
	<div ng-init="myFriend={name : '철수',age:25, hobby : '축구'}">
		내친구 소개
		<ul>
			<li ng-repeat="(attr,value) in myFriend">
				<p>{{attr}} : {{value}}</p>
			</li>
		</ul>
	</div>
</body>
</html>
