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
<body ng-init="person={name:'몽키', favorite:['사과','딸기','포도']}">
<h1>Hello {{person.name}}</h1>
<p> 좋아하는 과일 갯수 : {{numberOfFavorite = person.favorite.length}}</p>
<p> 과일 갯수 * 100 = {{numberOfFavorite * 100  | currency}}</p>
<P> 몽키가 맞나요? {{person.name =='몽키'}}</P>
<p> 좋아하는 과일 수가 4개보다 많나요? {{numberOfFavorite > 4}} </p>
<p> scope에 업는 객체에 접근하면 ? {{nothing}}</p>
</body>
</html>
