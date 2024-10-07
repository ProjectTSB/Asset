#> asset:mob/0059.jack_o_lantern/tick/skill/shoot/3.shoot2
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/shoot/2.shoot

#> Private
# @private
    #declare tag SpreadMarker

# 演出
    playsound entity.firework_rocket.launch hostile @a ~ ~ ~ 1 1.4

# 前方拡散
    execute rotated ~ 0 run summon marker ^ ^3 ^1 {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1.0
    data modify storage lib: Argument.Spread set value 2.3
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] run function lib:forward_spreader/circle

# Markerに自分の方を向かせた上で反対を向かせる
# これにより本体の向きを一切変えずに本体からMarkerへの方向がMarkerのRotationに入る
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] at @s facing entity @e[type=husk,tag=this,scores={MobID=59}] eyes facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~

# ミサイルを召喚
    data modify storage api: Argument.ID set value 2034
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] at @s run data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute anchored eyes positioned ^ ^ ^1 run function api:object/summon

# 前方拡散Markerをkill
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
