# Description
#   Play yelling goat sound
#
# Dependencies:
#   mpg321 (apt-get install mpg321)
#
# Configuration:
#   none
#
# Commands:
#   yelling goat
#
# Author:
#   https://github.com/bdossantos

{spawn, exec}  = require 'child_process'

goats = [
  "http://dl.dropboxusercontent.com/u/5236486/hubot/CRITICAL_GOAT.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/OK_GOAT.mp3"
]

module.exports = (robot) ->
  robot.hear /yelling goat/i, (msg)->
    cmd = 'mpg321 ' + msg.random goats
    exec cmd, (err, stdout, stderr) ->
      if err
        console.log("I couldn't exec " + cmd)
      else
        console.log('exec : ' + cmd)
