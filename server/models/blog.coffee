'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

BlogSchema = new Schema
	title:
		type: String

	content:
		type: String

	_user:
		type: Schema.Types.ObjectId
		ref: 'User'

	modified:
		type: Date
		default: Date.now

module.exports = mongooes.model 'Blog', BlogSchema
