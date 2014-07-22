# Description
#   friday13th
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot friday [<N>] - display the next friday the 13th
#
# Author:
#   bouzuya <m@bouzuya.net>
#
module.exports = (robot) ->
  friday = require '../friday'

  robot.respond /friday(\s+(\d+))?$/i, (res) ->
    day = parseInt(res.match[2] ? '13', 10)
    res.send friday(day)
