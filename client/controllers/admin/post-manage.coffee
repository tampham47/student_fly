'use strict'

angular.module('student-fly.admin')
# config route foreach controller
# .config ($routeProvider) ->
# 	$routeProvider.when '/admin',
# 		controller: 'admin-ctrl'
# 		templateUrl: 'views/admin/index.jade'

.controller 'admin-post-manage-ctrl', ($scope, $location, Post) ->
	console.log 'admin-post-manage-ctrl'
	_load_content = ->
		$scope.model = Post.getByTypeAndPaging
			type: 'bai-viet'
			current_page: $scope.current_page
			items_per_page: 5
	_load_content()

	$scope.search_panel = ->
		$('#search-panel').fadeToggle 'fast'
