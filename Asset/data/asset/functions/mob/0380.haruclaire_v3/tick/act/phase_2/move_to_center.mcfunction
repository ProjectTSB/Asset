#> asset:mob/0380.haruclaire_v3/tick/act/phase_2/move_to_center
#
# アイスクリメーション
#
# @within
#    function asset:mob/0380.haruclaire_v3/tick/act/phase_2/

# 中心点回転
    execute as @e[type=marker,tag=AK.CenterPosition,distance=..80] at @s store result entity @s Rotation[0] float 1 run random value 0..359

# 初期位置付近に移動
    scoreboard players set @s AK.EventTimer -1
    tag @s add AK.Skill.MoveS
    tag @s add AK.Temp.FixedRotation
    execute at @e[type=marker,tag=AK.CenterPosition,distance=..80] run summon area_effect_cloud ^ ^0.8 ^-4 {Tags:["AK.Temp.AttackPosition"],Duration:3}
