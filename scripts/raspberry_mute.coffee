# Description
#   (un)mute Raspberry
#
# Dependencies:
#   none
#
# Configuration:
#   none
#
# Commands:
#   raspberry mute
#   raspberry unmute
#   raspberry volume <integer>
#
# Author:
#   https://github.com/bdossantos
#
# See also:
#   http://jeffskinnerbox.wordpress.com/2012/11/15/getting-audio-out-working-on-the-raspberry-pi/

{spawn, exec}  = require 'child_process'

set_amixer = (state) ->
  cmd = 'amixer set PCM ' + state
  exec cmd, (err, stdout, stderr) ->
    if err
      output = "I couldn't exec " + cmd
      console.log(output)
    else
      output = "exec : " + cmd
      console.log(output)
    return output

module.exports = (robot) ->
  robot.hear /raspberry mute/i, (msg) ->
    set_amixer 'mute'
    msg.reply 'mute !'

  robot.hear /raspberry unmute/i, (msg) ->
    set_amixer 'unmute'
    msg.reply 'unmute !'

  robot.hear /raspberry volume (.*)/i, (msg) ->
    volume = parseInt(msg.match[1]) or 0
    set_amixer volume + '%'
    msg.reply 'set the volume to ' + volume + '%'
