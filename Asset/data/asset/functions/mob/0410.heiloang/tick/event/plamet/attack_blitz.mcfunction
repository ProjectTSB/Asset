#> asset:mob/0410.heiloang/tick/event/plamet/attack_blitz
#
# 急降下
#
# @within asset:mob/0410.heiloang/tick/event/plamet/

# 弾召喚
    data modify storage api: Argument.ID set value 2111
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Damage set value 40.0f
    function api:object/summon

# 演出
    particle flash ~ ~ ~ 1 1 1 0 4 force
    particle firework ~ ~ ~ 1 1 1 0.3 10 force

# 消去
    kill @e[type=area_effect_cloud,tag=BE.Temp.Blitz.SummonPosition,sort=nearest,limit=1]
