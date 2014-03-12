'use strict'

angular.module('student-fly')

.factory 'Auth', ($http, $q, $window, ApiConfig, authService) ->
	authUrl = ApiConfig.root + '/auth'
	deferred = $q.defer()

	# return

	user: deferred.promise

	getUser: ->
		$http.get(authUrl).then (response) ->
			deferred.resolve response.data
		return deferred.promise

	login: (credential) ->
		$http.post(authUrl, credential).then ->
			authService.loginConfirmed()

	logout: ->
		$http.delete(authUrl).finally ->
			$window.location.reload()
