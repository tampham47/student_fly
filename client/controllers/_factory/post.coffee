'use strict'

angular.module('student-fly')
.factory 'Post', ($resource) ->
	$resource 'http://localhost:3000/' + 'post/:cmd/:_id', null,
		create:
			method: 'POST'
			isArray: false
			params: cmd: 'create'
		getall:
			method: 'GET'
			isArray: true
			params: cmd: 'getall'
		getById:
			method: 'GET'
			isArray: false
			params: cmd: 'getById'
		getByType:
			method: 'GET'
			isArray: true
			params: cmd: 'getByType'
