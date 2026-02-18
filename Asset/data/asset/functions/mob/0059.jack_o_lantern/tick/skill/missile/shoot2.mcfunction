#> asset:mob/0059.jack_o_lantern/tick/skill/missile/shoot2
#
# カボチャミサイルの発射処理2
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/missile/shoot

# 演出
    execute as @a[distance=..30] at @s facing entity @e[type=zombie,tag=this,distance=..32,sort=nearest,limit=1] eyes positioned ^ ^ ^1 run playsound entity.firework_rocket.launch hostile @s ~ ~ ~ 0.7 1 1
    #execute as @a[distance=..30] at @s facing entity @e[type=zombie,tag=this,distance=..32,sort=nearest,limit=1] eyes positioned ^ ^ ^1 run playsound entity.chicken.egg hostile @s ~ ~ ~ 0.5 1 1
    execute as @a[distance=..30] at @s facing entity @e[type=zombie,tag=this,distance=..32,sort=nearest,limit=1] eyes positioned ^ ^ ^1 run playsound minecraft:entity.blaze.shoot hostile @s ~ ~ ~ 0.5 1.8

# 前方拡散
    summon marker ^ ^ ^0.1 {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1.0
    data modify storage lib: Argument.Spread set value 4.2
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] run function lib:forward_spreader/circle

# ミサイルを召喚
    data modify storage api: Argument.ID set value 2034
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.Missile
    data modify storage api: Argument.FieldOverride.TargetID set from storage asset:context this.TargetID
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] feet positioned ~ ~0.3 ~ run function api:object/summon

# 前方拡散Markerをkill
    kill @e[type=marker,tag=SpreadMarker,distance=..10]
