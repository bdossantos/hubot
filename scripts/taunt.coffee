# Description
#   Taunt people
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   none
#
# Author:
#   https://github.com/bdossantos
#

module.exports = (robot) ->
  robot.hear /failure/i, (msg) ->
    msg.send "Go home, you are drunk ..."
