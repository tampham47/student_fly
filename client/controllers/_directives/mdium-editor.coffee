'use strict'

angular.module('student-fly')
.directive "ngMeditor", ->
	restrict: "A"
	require: "ngModel"
	link: (scope, element, attrs, ngModelCtrl) ->
		$ ->
			new MediumEditor($(element))
			$(element).on 'input', ->
				ngModelCtrl.$setViewValue $(this).html()
