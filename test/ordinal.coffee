ordinal = require '../src/ordinal'

describe 'ordinal', ->

  describe 'n = 1', ->
    it 'returns "1st"', ->
      expect(ordinal(1)).to.equal('1st')

  describe 'n = 2', ->
    it 'returns "2nd"', ->
      expect(ordinal(2)).to.equal('2nd')

  describe 'n = 3', ->
    it 'returns "3rd"', ->
      expect(ordinal(3)).to.equal('3rd')

  describe 'n = 4', ->
    it 'returns "4th"', ->
      expect(ordinal(4)).to.equal('4th')
