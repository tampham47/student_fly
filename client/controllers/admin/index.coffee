'use strict'

angular.module('student-fly.admin', [])
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/admin',
		controller: 'admin-ctrl'
		templateUrl: 'views/admin/index.jade'

.controller 'admin-ctrl', ($scope, $location) ->
	$scope.title = 'admin-ctrl'
	$scope.template = 'views/account/index.jade'

	$scope.nav = (template) ->
		# $scope.template = 'views/admin/' + template
		$scope.template = template
