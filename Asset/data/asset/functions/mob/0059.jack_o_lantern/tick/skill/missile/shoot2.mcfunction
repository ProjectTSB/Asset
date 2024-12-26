#> asset:mob/0059.jack_o_lantern/tick/skill/missile/shoot2
#
# カボチャミサイルの発射処理2
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/missile/shoot

# 演出
    execute as @a[distance=..30] at @s facing entity @e[type=husk,tag=this,distance=..5,sort=nearest,limit=1] eyes positioned ^ ^ ^1 run playsound entity.firework_rocket.launch hostile @p ~ ~ ~ 0.7 1 1
    #execute as @a[distance=..30] at @s facing entity @e[type=husk,tag=this,distance=..5,sort=nearest,limit=1] eyes positioned ^ ^ ^1 run playsound entity.chicken.egg hostile @p ~ ~ ~ 0.5 1 1
    execute as @a[distance=..30] at @s facing entity @e[type=husk,tag=this,distance=..5,sort=nearest,limit=1] eyes positioned ^ ^ ^1 run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 0.5 1.8

# 前方拡散
    execute rotated ~ 0 run summon marker ^ ^ ^0.1 {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1.0
    data modify storage lib: Argument.Spread set value 4.2
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] run function lib:forward_spreader/circle

# Markerに自分の方を向かせた上で反対を向かせる
# これにより本体の向きを一切変えずに本体からMarkerへの方向がMarkerのRotationに入る
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] at @s facing entity @e[type=husk,tag=this,distance=..5,sort=nearest,limit=1] eyes facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~

# ミサイルを召喚
    data modify storage api: Argument.ID set value 2034
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Missile
    data modify storage api: Argument.FieldOverride.TargetID set from storage asset:context this.TargetID
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] at @s run data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ~ ~0.3 ~ run function api:object/summon

# 前方拡散Markerをkill
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
