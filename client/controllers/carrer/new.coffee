'use strict'

angular.module('student-fly.carrer')
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/carrer/new',
		controller: 'CarrerNewCtrl'
		templateUrl: 'views/carrer/new.jade'

.controller 'CarrerNewCtrl', ($scope, $location, Post) ->
	$scope.post =
		type: 'tuyen-dung'
		carrer: {}

	$scope.create = ->
		Post.create $scope.post, ->
			$location.path '/carrer'
