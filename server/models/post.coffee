'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

PostSchema = new Schema
	title:
		type: String

	content:
		type: String

	_user:
		type: Schema.Types.ObjectId
		ref: 'User'

	type:
		type: String
		enum: ['huong-nghiep', 'bai-viet', 'nghien-cuu']

	modified:
		type: Date
		default: Date.now

module.exports = mongooes.model 'Post', PostSchema
