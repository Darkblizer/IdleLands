_ = require "underscore"

class Equipment

  constructor: (options) ->
    _.extend @, _.defaults options, Equipment.defaults
    @_baseScore = @score()
    @foundAt = new Date()
    #console.error "ERROR in equipment constructor, name=#{@name}, type=#{@type}" if not @name or not @type

  score: ->
    ret = 0
    for attr, mult of Equipment.multipliers
      ret += @[attr]*mult if attr of @
    @_calcScore = ret
    parseInt ret

  getName: ->
    if @enchantLevel then "+#{@enchantLevel} #{@name}" else @name

  @multipliers =
    str: 1
    dex: 1
    con: 3.5
    int: 1.5
    wis: 1
    agi: 1

    ice: 0.3
    fire: 0.3
    water: 0.3
    earth: 0.3
    thunder: 0.3

    gold: 2
    xp: 3

    hp: 4
    mp: 2

    luck: 4.5

    strPercent: 6
    dexPercent: 6
    conPercent: 15
    intPercent: 10
    wisPercent: 6
    agiPercent: 6
    icePercent: 2
    firePercent: 2
    waterPercent: 2
    earthPercent: 2
    thunderPercent: 2

    goldPercent: 10
    xpPercent: 13

    hpPercent: 20
    mpPercent: 13

    enchantLevel: -25

    luckPercent: 20

    crit: 20
    dodge: 20
    prone: 20
    power: 20
    silver: 20
    deadeye: 20
    defense: 20
    glowing: 20

  @defaults =
    itemClass: "basic"
    str: 0
    dex: 0
    int: 0
    con: 0
    wis: 0
    agi: 0
    luck: 0
    sentimentality: 0
    piety: 0
    ice: 0
    fire: 0
    water: 0
    earth: 0
    thunder: 0
    xp: 0
    gold: 0

    strPercent: 0
    dexPercent: 0
    intPercent: 0
    conPercent: 0
    wisPercent: 0
    agiPercent: 0
    luckPercent: 0
    sentimentalityPercent: 0
    pietyPercent: 0
    icePercent: 0
    firePercent: 0
    waterPercent: 0
    earthPercent: 0
    thunderPercent: 0
    xpPercent: 0
    goldPercent: 0

    enchantLevel: 0

module.exports = exports = Equipment
