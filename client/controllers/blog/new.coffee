'use strict'

angular.module('student-fly.blog')
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/blog/new',
		controller: 'BlogNewCtrl'
		templateUrl: 'views/blog/new.jade'

.controller 'BlogNewCtrl', ($scope, $location, Post) ->
	$scope.post =
		type: 'bai-viet'

	$scope.create = ->
		# console.log $scope.post
		Post.create $scope.post, ->
			$location.path '/blog'
