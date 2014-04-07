'use strict'

angular.module('student-fly.account')
# config route foreach controller
# .config ($routeProvider) ->
# 	$routeProvider.when '/account',
# 		controller: 'account-ctrl'
# 		templateUrl: 'views/account/index.jade'

.controller 'account-new-ctrl', ($scope, $location) ->
	console.log 'account-new-ctrl'
	$scope.account_template = 'views/account/create.jade'

	$scope.nav = (template) ->
		# $scope.template = 'views/admin/' + template
		$scope.account_template = template
