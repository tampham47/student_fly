'use strict'

angular.module('student-fly.account')
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/account/create',
		controller: 'account-create-ctrl'
		templateUrl: 'views/account/create.jade'

.controller 'account-create-ctrl', ($scope, $location) ->
	console.log 'account-create-ctrl'
