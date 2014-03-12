'use strict'

User = require '../models/user'

create = (data) ->
	User.create(data).exec()

update = (id, data) ->
	User.findByIdAndUpdate(id, data).exec()

getById = (id) ->
	User.getById(id).exec()

getAll = ->
	User.find({}).exec()
