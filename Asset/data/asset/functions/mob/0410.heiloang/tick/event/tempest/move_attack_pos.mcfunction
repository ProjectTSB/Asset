#> asset:mob/0410.heiloang/tick/event/tempest/move_attack_pos
#
# テンペスト
#
# @within asset:mob/0410.heiloang/tick/event/tempest/particle_attack_area

# 移動位置決定
    summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["BE.Temp.AttackPosition"]}
    execute as @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] at @s run function asset:mob/0410.heiloang/tick/util/move_to_ground

# 移動
    execute at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] positioned ~ ~2 ~ run tp @s ~ ~ ~

# 中心
    execute at @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1] run particle cloud ~ ~ ~ 0.1 0.1 0.1 0.2 5

# 終了
    kill @e[type=area_effect_cloud,tag=BE.Temp.AttackPosition,sort=nearest,limit=1]
    tag @s add BE.Temp.MoveEnd
