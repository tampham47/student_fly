'use strict'

angular.module('student-fly.comment', [])
.controller 'comment-ctrl', ($scope, $location, $routeParams, Comment) ->
	postId = $routeParams._id
	$scope.comments = []
	$scope.comment =
		_post: postId

	_reloadComment = ->
		$scope.comments = Comment.getByPostId {postId: $routeParams._id}
	_reloadComment()

	$scope.create = ->
		data = Comment.create $scope.comment, ->
			$scope.comments.push data
			$scope.comment.content = ''
			$('#comment_area').empty()

