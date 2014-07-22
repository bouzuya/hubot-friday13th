module.exports = (day) ->
  if day is 1 then "#{day}st"
  else if day is 2 then "#{day}nd"
  else if day is 3 then "#{day}rd"
  else "#{day}th"
