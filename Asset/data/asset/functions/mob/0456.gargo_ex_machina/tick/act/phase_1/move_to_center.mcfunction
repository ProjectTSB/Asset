#> asset:mob/0456.gargo_ex_machina/tick/act/phase_1/move_to_center
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/act/phase_1/

# 中心点に移動
    execute at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] run summon area_effect_cloud ^ ^ ^ {Tags:["CO.Aec.Destination"],Duration:80}
    tag @s add CO.Skill.Move
