
Personality = require "../base/Personality"

class Good extends Personality
  constructor: ->

  alignment: -> 10

  @canUse = -> yes

  @desc = "No prerequisite"

module.exports = exports = Good