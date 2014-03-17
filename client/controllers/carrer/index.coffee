'use strict'

angular.module('student-fly.carrer', [])
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/carrer',
		controller: 'CarrerCtrl'
		templateUrl: 'views/carrer/index.jade'
.config ($routeProvider) ->
	$routeProvider.when '/',
		controller: 'CarrerCtrl'
		templateUrl: 'views/carrer/index.jade'

.controller 'CarrerCtrl', ($scope, $location, Post) ->
	# $scope.posts = Post.getByType({type: 'tuyen-dung'})

	# $scope.search_panel = ->
	# 	$('#search-panel').fadeToggle 'fast'
	$scope.current_page = 0
	_load_content = ->
		$scope.model = Post.getByTypeAndPaging
			type: 'tuyen-dung'
			current_page: $scope.current_page
			items_per_page: 5
	_load_content()

	$scope.is_next_page = ->
		if ($scope.current_page < $scope.model.highest_page)
			return true
		else
			return false

	$scope.prev_page = ->
		$scope.current_page -= 1
		_load_content()

	$scope.next_page = ->
		$scope.current_page += 1
		_load_content()

	$scope.search_panel = ->
		$('#search-panel').fadeToggle 'fast'
