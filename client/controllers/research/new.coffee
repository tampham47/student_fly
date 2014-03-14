'use strict'

angular.module('student-fly.research')
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/research/new',
		controller: 'ResearchNewCtrl'
		templateUrl: 'views/research/new.jade'

.controller 'ResearchNewCtrl', ($scope, $location, Post) ->
	$scope.post =
		type: 'nghien-cuu'
		research: {}

	$scope.create = ->
		Post.create $scope.post, ->
			$location.path '/research'
