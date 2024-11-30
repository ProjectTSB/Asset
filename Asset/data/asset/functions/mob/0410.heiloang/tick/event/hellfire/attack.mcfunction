#> asset:mob/0410.heiloang/tick/event/hellfire/attack
#
# ヘルファイア
#
# @within asset:mob/0410.heiloang/tick/event/hellfire/

# 攻撃位置決定用
    execute positioned ^ ^7 ^2 run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["BE.Temp.AttackRotation"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] at @s facing entity @p[tag=BE.MainTarget] feet run tp @s ~ ~ ~ ~ ~

# 攻撃
    data modify storage api: Argument.ID set value 2107
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    execute positioned ^ ^7 ^2 run function api:object/summon
