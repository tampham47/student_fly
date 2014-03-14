'use strict'

Post = require '../models/post'

create = (data) ->
	# create function always return a promise
	Post.create(data)

update = (id, data) ->
	Post.findByIdAndUpdate(id, data).exec()

getById = (id) ->
	Post.findById(id).exec()

getAll = ->
	Post.find({}).sort({modified: -1}).exec()

getByType = (type) ->
	Post.find({type: type}).sort({modified: -1}).exec()


module.exports = {
	create, update,
	getById, getAll, getByType
}
