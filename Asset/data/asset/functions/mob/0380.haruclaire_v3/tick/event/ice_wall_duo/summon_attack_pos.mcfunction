#> asset:mob/0380.haruclaire_v3/tick/event/ice_wall_duo/summon_attack_pos
#
# アイスウォール
#
# @within asset:mob/0380.haruclaire_v3/tick/event/ice_wall_duo/summon_attack_pos_start

# 攻撃位置決定
    summon area_effect_cloud ^ ^ ^ {Tags:["AK.Temp.AttackPosition","AK.IceWall.A","AK.Temp.Start"],Duration:200}
    summon area_effect_cloud ^ ^ ^ {Tags:["AK.Temp.AttackPosition","AK.IceWall.B","AK.Temp.Start"],Duration:200}
    summon area_effect_cloud ^ ^ ^ {Tags:["AK.Temp.AttackPosition","AK.IceWall.C","AK.Temp.Start"],Duration:200}
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,tag=AK.Temp.Start,distance=..80] positioned as @s run tp @s ~ ~ ~ ~ 0
    execute as @e[type=area_effect_cloud,tag=AK.IceWall.B,tag=AK.Temp.Start,distance=..80] at @s run tp @s ~ ~ ~ ~120 0
    execute as @e[type=area_effect_cloud,tag=AK.IceWall.C,tag=AK.Temp.Start,distance=..80] at @s run tp @s ~ ~ ~ ~240 0
    tag @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,tag=AK.Temp.Start,distance=..80] remove AK.Temp.Start
