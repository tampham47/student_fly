'use strict'

angular.module('student-fly.blog', [])
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/blog',
		controller: 'BlogCtrl'
		templateUrl: 'views/blog/index.jade'

.controller 'BlogCtrl', ($scope, $location, Post) ->
	$scope.current_page = 0
	_load_content = ->
		$scope.model = Post.getByTypeAndPaging
			type: 'bai-viet'
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
