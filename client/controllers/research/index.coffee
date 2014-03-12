'use strict'

angular.module('student-fly.research', [])
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/research',
		controller: 'ResearchCtrl'
		templateUrl: 'views/research/index.jade'

.controller 'ResearchCtrl', ($scope, $location) ->
	$scope.title = 'Công trình nghiên cứu khoa học'
