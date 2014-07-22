moment = require 'moment'

module.exports = (day) ->
  FRIDAY = 5
  today = moment()
  months = 0
  while true
    d = moment(today).add('months', months).set('date', day)
    if d.isAfter(today) and d.date() is day and d.isoWeekday() is FRIDAY
      return d.format('YYYY-MM-DD')
    months += 1
