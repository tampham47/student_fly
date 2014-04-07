'use strict'

angular.module('student-fly.admin')
# config route foreach controller
# .config ($routeProvider) ->
# 	$routeProvider.when '/admin',
# 		controller: 'admin-ctrl'
# 		templateUrl: 'views/admin/index.jade'

.controller 'admin-online-surveys-ctrl', ($scope, $location) ->
	console.log 'admin-online-surveys-ctrl'
