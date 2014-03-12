'use strict'

mongooes = require 'mongoose'
Schema = mongooes.Schema

PostSchema = new Schema
	_user:
		type: Schema.Types.ObjectId
		ref: 'User'

	title:
		type: String

	content:
		type: String

	type:
		type: String
		enum: ['tuyen-dung', 'bai-viet', 'nghien-cuu']

	carrer:
		requirements:
			type: String
		industry:
			type: String
		worksite:
			type: String
		salary:
			type: String
		position:
			type: String
		languageProfile:
			type: String

	modified:
		type: Date
		default: Date.now

module.exports = mongooes.model 'Post', PostSchema
