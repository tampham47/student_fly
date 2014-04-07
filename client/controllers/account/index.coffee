'use strict'

angular.module('student-fly.account', [])
# config route foreach controller
.config ($routeProvider) ->
	$routeProvider.when '/account',
		controller: 'account-ctrl'
		templateUrl: 'views/account/index.jade'

.controller 'account-ctrl', ($scope, $location) ->
	console.log 'account-ctrl'

	$scope.search_panel = ->
		$('#search-panel').fadeToggle 'fast'
