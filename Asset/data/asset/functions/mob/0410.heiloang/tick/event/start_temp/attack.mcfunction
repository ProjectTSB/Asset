#> asset:mob/0410.heiloang/tick/event/start_temp/attack
#
# フレア
#
# @within asset:mob/0410.heiloang/tick/event/flare/

# 角度調整用のtp
    execute rotated as @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,sort=nearest,limit=1] positioned as @s run tp @s ~ ~ ~ ~ 0

# 攻撃地点削除
    kill @e[type=area_effect_cloud,tag=BE.Temp.Flare.SummonPosition,sort=nearest,limit=1]

# 弾召喚
    data modify storage api: Argument.ID set value 2123
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 60.0f
    function api:object/summon

# ノーマルでは対角にも召喚
    execute unless predicate api:global_vars/difficulty/2_hard run return run execute positioned as @s run tp @s ~ ~ ~ ~ 0
    execute at @s run tp @s ~ ~ ~ ~180 ~
    data modify storage api: Argument.ID set value 2123
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 60.0f
    execute rotated as @s positioned ^ ^ ^-32 run function api:object/summon

# 終了
    execute positioned as @s run tp @s ~ ~ ~ ~ 0
