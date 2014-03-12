'use strict'

angular.module('student-fly.job', [])
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/job',
		controller: 'JobCtrl'
		templateUrl: 'views/job/index.jade'

.controller 'JobCtrl', ($scope, $location) ->
	$scope.title = 'Danh sách tuyển dụng'