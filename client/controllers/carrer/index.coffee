'use strict'

angular.module('student-fly.carrer', [])
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/carrer',
		controller: 'CarrerCtrl'
		templateUrl: 'views/carrer/index.jade'

.controller 'CarrerCtrl', ($scope, $location, Post) ->
	$scope.posts = Post.getByType({type: 'tuyen-dung'})

	$scope.search_panel = ->
		$('#search-panel').fadeToggle 'fast'
