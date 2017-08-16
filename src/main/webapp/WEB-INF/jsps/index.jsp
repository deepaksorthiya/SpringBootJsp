<!DOCTYPE html>
<html ng-app="App">
<head>
<title>TODO supply a title</title>
<meta charset="UTF-8">
<link href="../../favicon.ico" rel="icon" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
	padding: 20px
}

tbody:nth-child(even) {
	background: #F9F9F9;
}
</style>
<script src="../../js/angular.js" type="text/javascript"></script>
<script>
	angular.module('App', []);
	angular.module('App').controller('MyCtrl', function($scope) {
		$scope.groups = [ {
			"id" : 1,
			"members" : [ {
				"name" : "Sue",
				"age" : 48
			}, {
				"name" : "Jane",
				"age" : 12
			}, {
				"name" : "Edna",
				"age" : 10
			} ]
		}, {
			"id" : 2,
			"members" : [ {
				"name" : "Harry",
				"age" : 45
			}, {
				"name" : "Brian",
				"age" : 18
			} ]
		}, {
			"id" : 3,
			"members" : [ {
				"name" : "Spot",
				"age" : 2
			}, {
				"name" : "Whiskers",
				"age" : 7
			} ]
		} ];
	});
</script>
</head>
<body>
	<div ng-controller="MyCtrl">
		<table class="table table-bordered">
			<thead>
				<tr>
					<td>&nbsp;</td>
					<th>Member</th>
					<th>Age</th>
				</tr>
			</thead>
			<tbody ng-repeat="group in groups">
				<tr ng-repeat="member in group.members">
					<td rowspan="{{group.members.length}}" ng-hide="$index > 0"><input
						type="checkbox" value="{{member.id}}" ng-click="select()">{{group.id}}
					</td>
					<td>{{member.name}}</td>
					<td>{{member.age}}</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>
