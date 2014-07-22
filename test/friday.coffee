moment = require 'moment'
friday = require '../src/friday'

describe 'friday', ->

  describe 'today = 2014-01-01 day = 13', ->

    beforeEach ->
      today = '2014-01-01'
      @sinon.useFakeTimers(moment(today).valueOf(), 'Date')

    it 'returns 2014-06-13', ->
      expect(friday(13)).to.equal('2014-06-13')

  describe 'today = 2014-06-13 day = 13', ->

    beforeEach ->
      today = '2014-06-13'
      @sinon.useFakeTimers(moment(today).valueOf(), 'Date')

    it 'returns 2015-02-13', ->
      expect(friday(13)).to.equal('2015-02-13')

  describe 'today = 2014-01-01 day = 30', ->

    beforeEach ->
      today = '2014-01-01'
      @sinon.useFakeTimers(moment(today).valueOf(), 'Date')

    it 'returns 2014-05-30', ->
      expect(friday(30)).to.not.equal('2014-02-28')
      expect(friday(30)).to.equal('2014-05-30')
