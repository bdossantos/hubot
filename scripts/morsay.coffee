# Description
#   Play morsay sample
#
# Dependencies:
#   mpg321 (apt-get install mpg321)
#
# Configuration:
#   none
#
# Commands:
#   morsay
#
# Author:
#   https://github.com/organizations/ArthurMediaGroup

{spawn, exec}  = require 'child_process'

morsay = [
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_10.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_14.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_17.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_21.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_24.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_27.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_30.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_33.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_37.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_41.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_44.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_47.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_50.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_53.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_56.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_59.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_62.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_66.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_69.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay_72.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000010.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000014.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000016.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000018.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000020.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000022.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000024.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000026.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000028.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000030.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000032.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000034.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000036.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000038.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000040.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000042.mp3",
  "http://dl.dropboxusercontent.com/u/5236486/hubot/morsay/morsay2_000044.mp3"
]

module.exports = (robot) ->
  robot.hear /morsay/i, (msg)->
    cmd = 'mpg321 ' + msg.random morsay
    exec cmd, (err, stdout, stderr) ->
      if err
        console.log("I couldn't exec " + cmd)
      else
        console.log('exec : ' + cmd)
