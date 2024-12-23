#> asset:mob/0123.lexiel_v3/tick/common/fireball
#
#
#
# @within function asset:mob/0123.lexiel_v3/tick/**/**

#> private
# @private
    #declare tag SpreadMarker

# 演出
    playsound entity.blaze.shoot hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 1.5
    playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 2 2
    playsound minecraft:entity.witch.throw hostile @a ~ ~ ~ 2 0.7

# 前方拡散
    execute positioned ^ ^ ^1 run summon marker ^ ^ ^ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1.0
    data modify storage lib: Argument.Spread set value 1.2
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] run function lib:forward_spreader/circle

# Markerに自分の方を向かせた上で反対を向かせる
# これにより本体の向きを一切変えずに本体からMarkerへの方向がMarkerのRotationに入る
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] at @s facing entity @e[type=wither_skeleton,tag=this,distance=..30,limit=1] eyes facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~

# 召喚
    data modify storage api: Argument.ID set value 2101
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] at @s run data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute positioned ^ ^ ^1 run function api:object/summon

# 前方拡散Markerをkill
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
