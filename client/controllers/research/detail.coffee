'use strict'

angular.module('student-fly.research')
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/research/detail/:_id',
		controller: 'ResearchDetailCtrl'
		templateUrl: 'views/research/detail.jade'

.controller 'ResearchDetailCtrl', ($scope, $location, $routeParams, Post) ->
	$scope.post = Post.getById {id: $routeParams._id}
