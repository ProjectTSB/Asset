#> asset:effect/275.moon_blessing/barrier/get
# @output result BarrierAmount
# @within function asset:effect/275.moon_blessing/tick/

data modify storage api: Argument.UUID set from storage asset:context this.UUID
function api:entity/player/absorption/get

return run data get storage api: Return.Absorption.Amount 10
