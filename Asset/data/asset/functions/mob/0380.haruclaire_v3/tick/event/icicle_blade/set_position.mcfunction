#> asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/set_position
#
# アイシクルブレード
#
# @within asset:mob/0380.haruclaire_v3/tick/event/icicle_blade/

# 召喚位置決定
    summon area_effect_cloud ^ ^ ^ {Tags:["AK.Temp.AttackPosition"],Duration:35}

# 地面に合わせる
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
    execute as @e[type=area_effect_cloud,tag=AK.Temp.AttackPosition,distance=..80] positioned as @s run tp @s ~ ~0.6 ~ ~ 0
