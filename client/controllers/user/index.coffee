'use strict'

angular.module('student-fly.user', [])
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/user',
		controller: 'UserCtrl'
		templateUrl: 'views/user/index.jade'

.controller 'UserCtrl', ($scope, $location) ->
	$scope.title = 'user controller'
