#> asset:mob/0410.heiloang/tick/event/plamet/attack_pursuit
#
# 急降下
#
# @within asset:mob/0410.heiloang/tick/event/plamet/

# 地面が無ければ消す
    execute if block ~ ~-1 ~ #lib:no_collision run return run kill @e[type=area_effect_cloud,tag=BE.Temp.Plamet.SummonPosition,sort=arbitrary,limit=1]

# 弾召喚
    data modify storage api: Argument.ID set value 2129
    data modify storage api: Argument.FieldOverride.Rotation set from entity @e[type=area_effect_cloud,tag=BE.Temp.Plamet.SummonPosition,sort=arbitrary,limit=1] Rotation
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 45.0f
    function api:object/summon

# 終了
    kill @e[type=area_effect_cloud,tag=BE.Temp.Plamet.SummonPosition,sort=arbitrary,limit=1]
