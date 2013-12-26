# Description
#   Return Munin graph
#
# Dependencies:
#   none
#
# Configuration:
#   HUBOT_MUNIN_URL
#
#   eg : 'http://domain.tld/munin-cgi/munin-cgi-graph'
#
# Commands:
#   hubot graph me <fqdn> <metric>
#
# Author:
#   https://github.com/bdossantos

munin = process.env.HUBOT_MUNIN_URL or 'http://domain.tld/munin-cgi/munin-cgi-graph'

module.exports = (robot) ->
  robot.hear /graph me (.*) (.*)/, (msg)->
    fqdn = msg.match[1]
    domain = fqdn.replace(/^[^.]+\./g, '')
    metric = msg.match[2]

    now = new Date
    start = Math.round((now.getTime() - (1000 * 60 * 60 * 24)) / 1000)
    end = Math.round(now.getTime() / 1000)

    url = munin + '/' + domain + '/' + fqdn + '/' + metric + '-pinpoint=' + start + ',' + end + '.png?size_x=800&size_y=400'
    console.log('Try to feth this graph : ' + url)
    robot.http(url).get() (err, res, body) ->
      if err
        msg.send "Encountered an error :( #{err}"
        return
      else
        msg.send url
