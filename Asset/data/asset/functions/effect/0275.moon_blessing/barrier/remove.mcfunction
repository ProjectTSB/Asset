#> asset:effect/0275.moon_blessing/barrier/remove
# @within function
#   asset:effect/0275.moon_blessing/re-given/
#   asset:effect/0275.moon_blessing/end/
#   asset:effect/0275.moon_blessing/remove/

data modify storage api: Argument.UUID set from storage asset:context this.UUID
function api:entity/player/absorption/remove
