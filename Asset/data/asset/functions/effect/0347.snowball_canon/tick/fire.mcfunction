#> asset:effect/0347.snowball_canon/tick/fire
#
# fireといっても雪玉だけどな！
#
# @within function asset:effect/0347.snowball_canon/tick/shoot

#> Private
# @private
    #declare tag SpreadMarker

# フルチャージか否かで拡散と弾速が変わる

# 前方拡散
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 0.5
    execute if data storage asset:context this{IsFullCharge:false} run data modify storage lib: Argument.Spread set from storage asset:context this.Spread.Neutral
    execute if data storage asset:context this{IsFullCharge: true} run data modify storage lib: Argument.Spread set from storage asset:context this.Spread.FullCharge
    execute as @e[type=marker,tag=SpreadMarker,distance=..0.01,limit=1] run function lib:forward_spreader/circle

# Object召喚
    data modify storage api: Argument.ID set value 1155
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage
    execute if data storage asset:context this{IsFullCharge:false} run data modify storage api: Argument.FieldOverride.Motion set from storage asset:context this.Motion.Neutral
    execute if data storage asset:context this{IsFullCharge: true} run data modify storage api: Argument.FieldOverride.Motion set from storage asset:context this.Motion.FullCharge
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] eyes run function api:object/summon

# リセット
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
