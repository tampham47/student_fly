'use strict'

# require order is important
angular.module 'student-fly', [
	'ngAnimate'
	'ngRoute'
	'ngResource'
	'ngSanitize'

	'student-fly.templates'
	'student-fly.home'
	'student-fly.user'

	'student-fly.blog'
	'student-fly.job'
	'student-fly.research'
]
