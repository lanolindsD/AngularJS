<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html; charset=UTF-8"  %>
<html ng-app="myApp">
<head>	
	<title>${title}</title>
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<link rel="stylesheet" href="resources/css/com/common.css"/>
	<link rel="stylesheet" href="resources/js/bootstrap/css/bootstrap.css" />
	<style type="text/css">		
	</style>
	
	<script type="text/javascript" src="resources/js/angularjs/angular.min.js"></script>
	<script type="text/javascript" src="resources/js/gen/twoway.js"></script>	
</head>
<body ng-controller="mainCtrl">
	<div>
		<h1>{{menuTitle}}</h1>
		<h2>{{menuContent}}</h2>
		<table>
			<thead>
				<tr>
					<th>메뉴</th><th>가격</th><th>갯수</th>
				</tr>
			</thead>
			<tbody>
				<tr ng-repeat="menu in menuList">
					<td>{{menu.itemName}}</td>
					<td>{{menu.itemPrice}}</td>
					<td><input type="text" ng-model="menu.itemCount"></td>
				</tr>
			</tbody>
		</table>
		
		<button ng-click="buy()" >구매</button>
		<h2>{{buyPrice}}</h2>
		<div>
			가격 : {{totalPrice()}}
		</div>
	</div>
</body>
</html>
