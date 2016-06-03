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
		.ng-invalid{
			border : 3px solid red;
		}
		.ng-valid{
			border : 3px solid green;
		}
		.ng-pristine{
			border-style: solid;
		}
		.ng-dirty{
			border-style: dotted;
		}
	</style>
	
	<script type="text/javascript" src="resources/js/angularjs/angular.min.js"></script>	
</head>
<body>
	<div ng-init="countryList =[{name:'한국', code:'KR', continent : '아시아'}, {name:'일본', code :'JR', continent:'아시아'}, {name:'미국', code:'EN', continent : '북미'}]">
		<form name="myRouteForm">
			<div>
				출발국가 :
					<select ng-model="depCountry" ng-options="country.name for country in countryList" ng-required="true">
						<option value="">선택하여 주세요</option>
					</select>
			</div>
			<div>
				경유국가 :
					<select ng-model="viaCountry" ng-options="country.name as country.name for country in countryList"  >
						<option value="">선택하여 주세요</option>
					</select>
			</div>
			<div>
				도착국가(대륙 그룹별):
					<select ng-model="arrCountry" ng-options="country.name group by country.continent for country in countryList" ng-required="true">
						<option value="">선택하여 주세요</option>
					</select>
			</div>
		</form>
		
		<div>
			<p>출발 국가 : {{depCountry.name}}</p>
			<p>경유 국가 : {{viaCountry}}</p>
			<p>도착 국가 : {{arrCountry.name}}</p>
		</div>
		<div ng-show="myRouteForm.$invalid">
			출발국가와 도착국가는 필수 선택사항입니다.
		</div>
	</div>
</body>
</html>
