'use strict'

angular.module('student-fly.job')
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/job/detail/:_id',
		controller: 'JobDetailCtrl'
		templateUrl: 'views/job/detail.jade'

.controller 'JobDetailCtrl', ($scope, $location, $routeParams, Post) ->
	$scope.post = Post.getById {id: $routeParams._id}
