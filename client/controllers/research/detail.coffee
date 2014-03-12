'use strict'

angular.module('student-fly.research')
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/research/detail',
		controller: 'ResearchDetailCtrl'
		templateUrl: 'views/research/detail.jade'

.controller 'ResearchDetailCtrl', ($scope, $location) ->
	$scope.title = 'research controller'
