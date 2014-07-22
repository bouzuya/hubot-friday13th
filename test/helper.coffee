global.expect = require('chai').use(require('sinon-chai')).expect
sinon = require 'sinon'
{Kakashi} = require 'kakashi'

beforeEach ->
  @sinon = sinon.sandbox.create()

afterEach ->
  @sinon.restore()
