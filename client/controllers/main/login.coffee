# 'use strict'

# angular.module('student-fly')

# .controller 'LoginCtrl', ($scope, $rootScope, Auth) ->
# 	# Show login modal
# 	$scope.$on 'event:auth-loginRequired', ->
# 		jQuery('body > .modal').modal
# 			backdrop: 'static'
# 			keyboard: false

# 	# Hide login modal
# 	$scope.$on 'event:auth-loginConfirmed', ->
# 		jQuery('body > .modal').modal 'hide'

# 	$scope.cancel = ->
# 		$rootScope.btn_login = null
# 		jQuery('body > .modal').modal 'hide'

# 	$scope.login = ->
# 		return if $scope.form.$invalid

# 		promise: Auth.login($scope.credential).then ->
# 			$scope.error = false
# 		, ->
# 			$scope.error = true
