'use strict'

angular.module('student-fly.carrer')
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/carrer/detail/:_id',
		controller: 'CarrerDetailCtrl'
		templateUrl: 'views/carrer/detail.jade'

.controller 'CarrerDetailCtrl', ($scope, $location, $routeParams, Post) ->
	$scope.post = Post.getById {id: $routeParams._id}
