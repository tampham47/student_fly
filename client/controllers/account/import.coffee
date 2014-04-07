'use strict'

angular.module('student-fly.account')
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/account/import',
		controller: 'account-import-ctrl'
		templateUrl: 'views/account/import.jade'

.controller 'account-import-ctrl', ($scope, $location) ->
	console.log 'account-import-ctrl'
