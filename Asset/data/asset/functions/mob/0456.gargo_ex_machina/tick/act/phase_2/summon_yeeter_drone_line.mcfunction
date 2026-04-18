#> asset:mob/0456.gargo_ex_machina/tick/act/phase_2/summon_yeeter_drone_line
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/act/phase_2/

# ランダムな4辺中央に移動
    execute store result score $CO.Temp.Rotation Global run random value 0..3
    execute store result entity @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] Rotation[0] float 1 run scoreboard players operation $CO.Temp.Rotation Global *= $90 Const
    execute at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ run summon area_effect_cloud ^ ^ ^-25 {Tags:["CO.Aec.Destination"],Duration:80}
    tag @s add CO.Skill.Move

# 左右にドローン召喚
    data modify storage api: Argument.ID set value 2261
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function asset:mob/0456.gargo_ex_machina/tick/util/assing_object_id
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.YeeterDrone
    data modify storage api: Argument.FieldOverride.IsRotate set value false
    data modify storage api: Argument.FieldOverride.IsRotateInverse set value false
    execute at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] positioned ^-20 ^ ^-28 run function api:object/summon
    data modify storage api: Argument.ID set value 2261
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    function asset:mob/0456.gargo_ex_machina/tick/util/assing_object_id
    data modify storage api: Argument.FieldOverride.Damage set from storage asset:context this.Damage.YeeterDrone
    data modify storage api: Argument.FieldOverride.IsRotate set value false
    data modify storage api: Argument.FieldOverride.IsRotateInverse set value false
    execute at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] positioned ^20 ^ ^-28 run function api:object/summon
