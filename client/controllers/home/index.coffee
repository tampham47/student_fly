'use strict'

angular.module('student-fly.home', [])
# config route foreach controller
# .config ($routeProvider) ->
# 	$routeProvider.when '/',
# 		controller: 'HomeCtrl'
# 		templateUrl: 'views/home/index.jade'

.controller 'HomeCtrl', ($scope, $location) ->
	$scope.title = 'phạm minh tâm'
