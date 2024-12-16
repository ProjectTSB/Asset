#> asset:mob/0410.heiloang/tick/event/flare/attack
#
# アニヒレートフレア
#
# @within asset:mob/0410.heiloang/tick/event/flare/

# 弾召喚
    data modify storage api: Argument.ID set value 2123
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 60.0f
    function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,sort=nearest,limit=1]

# ノーマル以上では対角にも召喚
    execute if predicate api:global_vars/difficulty/easy run return 0
    execute at @s run tp @s ~ ~ ~ ~180 ~
    data modify storage api: Argument.ID set value 2123
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 60.0f
    execute positioned ^ ^ ^-32 run function api:object/summon
    execute at @s run tp @s ~ ~ ~ ~180 ~
