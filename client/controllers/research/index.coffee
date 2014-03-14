'use strict'

angular.module('student-fly.research', [])
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/research',
		controller: 'ResearchCtrl'
		templateUrl: 'views/research/index.jade'

.controller 'ResearchCtrl', ($scope, $location, Post) ->
	$scope.posts = Post.getByType({type: 'nghien-cuu'})

	$scope.search_panel = ->
		$('#search-panel').fadeToggle 'fast'
