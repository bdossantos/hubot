# Description:
#
# Commands:
#   hubot popopo - Return popopo

module.exports = (robot) ->
  robot.hear /popopo/i, (msg) ->
    msg.send "PoPoPoooooo !"
    msg.send "http://www.youtube.com/watch?v=_dhOa8kPiYs"
