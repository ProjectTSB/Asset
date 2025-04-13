#> asset:mob/0380.haruclaire_v3/tick/act/phase_2/icecremation_first
#
# アイスクリメーション
#
# @within
#    function asset:mob/0380.haruclaire_v3/tick/act/phase_2/icecremation
#    function asset:mob/0380.haruclaire_v3/tick/event/summon_hatoclaire/end

# 中心点回転
    execute as @e[type=marker,tag=AK.CenterPosition,distance=..80] at @s run function asset:mob/0380.haruclaire_v3/tick/util/turn_center_position

# 初期位置に移動
    scoreboard players set @s AK.EventTimer 0
    tag @s add AK.Skill.MoveS
    tag @s add AK.Temp.FixedRotation
    execute at @e[type=marker,tag=AK.CenterPosition,distance=..80] run summon area_effect_cloud ^ ^0.8 ^-8 {Tags:["AK.Temp.AttackPosition"],Duration:3}

# イベント実行
    tag @s add AK.Skill.IceCremation.First
    tag @s add AK.Skill.IceCremation.First.Used
