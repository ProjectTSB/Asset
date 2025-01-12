#> asset:mob/0410.heiloang/tick/event/plamet/set_dive_target
#
# 急降下
#
# @within asset:mob/0410.heiloang/tick/event/plamet/

# 移動位置決定
    execute positioned as @a[tag=BE.HateTarget,distance=..80] run summon area_effect_cloud ~ ~ ~ {Duration:25,Tags:["BE.Temp.AttackRotation"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/move_to_ground
