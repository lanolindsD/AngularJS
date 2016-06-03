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
			.box{width:100px;height:100px;}
			.red{background-color: red;}
			.blue{background-color: blue;}
			.black{background-color: black;}
			.green{background-color: green;}
	</style>
	
	<script type="text/javascript" src="resources/js/angularjs/angular.min.js"></script>	
</head>
<body>
	<div>
		<input type="radio" ng-model="color" value="red">빨강색<br/>
		<input type="radio" ng-model="color" value="green">녹색<br/>
		<input type="radio" ng-model="color" value="blue">파란색<br/>		
		
		<div ng-switch="color">
			<div ng-switch-when="red" class="box red"></div>
			<div ng-switch-when="blue" class="box blue"></div>
			<div ng-switch-when="green" class="box green"></div>
			<div ng-switch-default class="box black"></div>
		</div>
		
	</div>

</body>
</html>
