'use strict'

angular.module('student-fly.research')
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/research/new',
		controller: 'ResearchNewCtrl'
		templateUrl: 'views/research/new.jade'

.controller 'ResearchNewCtrl', ($scope, $location) ->
	$scope.title = 'research controller'
