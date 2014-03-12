'use strict'

angular.module('student-fly.blog')
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/blog/detail/:_id',
		controller: 'BlogDetailCtrl'
		templateUrl: 'views/blog/detail.jade'

.controller 'BlogDetailCtrl', ($scope, $location, $routeParams, Post) ->
	$scope.post = Post.getById {id: $routeParams._id}
