'use strict'

angular.module('student-fly.job')
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/job/new',
		controller: 'JobNewCtrl'
		templateUrl: 'views/job/new.jade'

.controller 'JobNewCtrl', ($scope, $location) ->
	$scope.title = 'Đăng tin tuyển dụng'
