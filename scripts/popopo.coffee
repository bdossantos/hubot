# Description:
#
# Commands:
#   hubot popopo - Return popopo


{spawn, exec}  = require 'child_process'

module.exports = (robot) ->
  robot.hear /popopo/i, (msg) ->
    msg.send "PoPoPoooooo !"
    msg.send "http://www.youtube.com/watch?v=_dhOa8kPiYs"

    cmd = 'mpg321 ' + 'http://dl.dropboxusercontent.com/u/5236486/hubot/POPOPO_What_the_cut.mp3'
    exec cmd, (err, stdout, stderr) ->
      if err
        console.log("I couldn't exec " + cmd)
      else
        console.log('exec : ' + cmd)
