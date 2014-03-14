'use strict'

angular.module('student-fly')
.directive 'ngHref', ($location) ->
	link: (scope, element, attrs) ->
		$ ->
			element.attr 'href', attrs.ngHref

			$(element).on 'click', ->
			# scope.$on '$routeChangeSuccess', ->
				$('li', $(this).parent().parent()).removeClass 'active'
				$(this).parent().addClass 'active'
