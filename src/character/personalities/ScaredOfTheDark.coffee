
Personality = require "../base/Personality"

class ScaredOfTheDark extends Personality

  constructor: ->

  descendChance: -> -100
  ascendChance: -> 100

  @canUse = (player) ->
    player.statistics["explore transfer ascend"] >= 5

  @desc = "Ascend 5 staircases"

module.exports = exports = ScaredOfTheDark