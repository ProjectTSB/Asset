#> asset:mob/0410.heiloang/tick/event/hellfire/set_attack_position.m
#
# ヘルファイア
#
# @within asset:mob/0410.heiloang/tick/event/hellfire/attack

# 攻撃位置決定
    execute positioned as @p[tag=BE.MainTarget] run summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["BE.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/move_to_ground
    $summon area_effect_cloud ^$(posx) ^$(posy) ^$(posz) {Duration:1,Tags:["BE.Temp.AttackRotation"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackRotation,limit=1] at @s facing entity @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,limit=1] feet run tp @s ~ ~ ~ ~ ~
