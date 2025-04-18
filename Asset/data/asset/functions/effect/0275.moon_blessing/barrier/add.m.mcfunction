#> asset:effect/0275.moon_blessing/barrier/add.m
# @input args
#   AmountSource: string
# @within function
#   asset:effect/0275.moon_blessing/given/
#   asset:effect/0275.moon_blessing/re-given/
#   asset:effect/0275.moon_blessing/tick/

data modify storage api: Argument.UUID set from storage asset:context this.UUID
$execute store result storage api: Argument.Amount int 0.1 run $(AmountSource)
data modify storage api: Argument.Priority set value 1
function api:entity/player/absorption/add
