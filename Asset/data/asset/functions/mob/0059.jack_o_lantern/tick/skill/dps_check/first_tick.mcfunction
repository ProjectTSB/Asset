#> asset:mob/0059.jack_o_lantern/tick/skill/dps_check/first_tick
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/dps_check/

# 中央に戻る
    execute positioned as @e[type=marker,tag=1N.SpawnMarker,distance=..64,limit=1] run tp @s ~ ~ ~

# 演出
    execute at @s run playsound entity.witch.celebrate hostile @a ~ ~ ~ 1 2 0

# カボチャ召喚
    data modify storage api: Argument.ID set value 2039
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.DPSCheck
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute at @s rotated 0 0 positioned ^ ^ ^32 facing entity @e[type=marker,tag=1N.SpawnMarker,distance=..128,limit=1] eyes run function api:object/summon

# NoAI化
    data modify entity @s NoAI set value 1b
