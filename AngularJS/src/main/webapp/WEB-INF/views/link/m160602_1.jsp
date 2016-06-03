<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html ng-app="myApp">
<head>
<title>${title}</title>
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<link rel="stylesheet" href="resources/css/com/common.css" />
<link rel="stylesheet" href="resources/js/bootstrap/css/bootstrap.css" />
<style type="text/css">
</style>

<script type="text/javascript" src="resources/js/angularjs/angular.min.js"></script>
<script type="text/javascript" src="resources/js/gen/app.js"></script>
 

</head>
<body class="well" ng-controller="todoCtrl">
	<h1>{{appName}}</h1>

	<p>
		전체 할 일 <strong>{{todoList.length}}</strong>개 / 남은 할일은 <strong>{{remain()}}</strong>개 [<a href="" ng-click="archive()">보관하기</a>]
	</p>

	<ul class="list-unstyled">
		<li ng-repeat="todo in todoList" class="checkbox">
			<input type="checkbox" ng-model="todo.done">{{todo.title}}
		</li>
	</ul>
	
	<form name="newItemForm" class="form-inline" action="">
		<div class="form-group">
			<label class="sr-only" for="newItemText">새로운 할 일</label> <input
				type="text" class="form-control" name="newItemText"
				placeholder="새로운 할 일" ng-model="newTitle">
		</div>
		<button type="button" class="btn btn-default" ng-click="addNewTodo(newTitle)">추가</button>
	</form>
</body>
</html>
