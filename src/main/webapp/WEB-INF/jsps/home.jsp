<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="App">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script src="../../js/angular.js" type="text/javascript"></script>
<script>
	var app = angular.module('App', []);
	app.controller('MyCtrl', function($scope, $http) {
		$scope.items = [];
		$http({
			url : "/getAll",
			method : "GET",
			params : {
				id : [ 1, 2, 3 ]
			}
		}).then(function(response) {
			$scope.items = response.data;
		});
	});
</script>
</head>
<body>
	<div ng-controller="MyCtrl">
		<ul>
			<li ng-repeat="item in items">{{item}}</li>
		</ul>
	</div>
	<h1>home add</h1>
</body>
</html>