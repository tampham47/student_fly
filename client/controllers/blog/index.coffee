'use strict'

angular.module('student-fly.blog', [])
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/blog',
		controller: 'BlogCtrl'
		templateUrl: 'views/blog/index.jade'

.controller 'BlogCtrl', ($scope, $location, Post) ->
	$scope.posts = Post.getByType({type: 'bai-viet'})
