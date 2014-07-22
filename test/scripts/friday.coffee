require '../helper'

describe 'friday', ->
  beforeEach (done) ->
    {Kakashi} = require 'kakashi'
    @kakashi = new Kakashi(httpd: false)
    @kakashi.scripts = [require '../../src/scripts/friday']
    @kakashi.users = [{ id: 'bouzuya', room: 'hitoridokusho' }]
    @kakashi.start().then done, done

  afterEach (done) ->
    @kakashi.stop().then done, done

  describe 'receive "@hubot friday"', ->

    beforeEach ->
      moment = require 'moment'
      @sinon.useFakeTimers moment('2014-07-22').valueOf(), 'Date'

    it 'send "the next friday the 13th is 2015-02-13"', (done) ->
      sender = id: 'bouzuya', room: 'hitoridokusho'
      message = '@hubot friday'
      @kakashi
        .receive sender, message
        .then =>
          expect(@kakashi.send.callCount).to.equal(1)
          expect(@kakashi.send.firstCall.args[1]).to
            .equal('the next friday the 13th is 2015-02-13')
        .then (-> done()), done

  describe 'receive "@hubot friday 25"', ->

    beforeEach ->
      moment = require 'moment'
      @sinon.useFakeTimers moment('2014-07-22').valueOf(), 'Date'

    it 'send "the next friday the 25th is 2014-07-25"', (done) ->
      sender = id: 'bouzuya', room: 'hitoridokusho'
      message = '@hubot friday 25'
      @kakashi
        .receive sender, message
        .then =>
          expect(@kakashi.send.callCount).to.equal(1)
          expect(@kakashi.send.firstCall.args[1]).to
            .equal('the next friday the 25th is 2014-07-25')
        .then (-> done()), done
