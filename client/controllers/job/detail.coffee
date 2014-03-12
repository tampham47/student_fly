'use strict'

angular.module('student-fly.job')
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/job/detail',
		controller: 'JobDetailCtrl'
		templateUrl: 'views/job/detail.jade'

.controller 'JobDetailCtrl', ($scope, $location) ->
	$scope.title = 'chi tiết tuyển dụng'
