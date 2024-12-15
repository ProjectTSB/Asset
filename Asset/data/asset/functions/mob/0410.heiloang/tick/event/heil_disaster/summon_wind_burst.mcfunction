#> asset:mob/0410.heiloang/tick/event/heil_disaster/summon_wind_burst
#
# ヘイルディザスター・風
#
# @within asset:mob/0410.heiloang/tick/event/heil_disaster/attack

# 攻撃用AEC召喚
    data modify storage api: Argument.ID set value 2119
    data modify storage api: Argument.FieldOverride.Rotation set from entity @s Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 45.0f
    function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1]
