#> asset:mob/0456.gargo_ex_machina/tick/act/phase_1/move_to_corner
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/act/phase_1/

#> Private
# @within function asset:mob/0456.gargo_ex_machina/tick/act/phase_1/move_to_corner
    #declare score_holder $CO.Temp.Rotation

# ランダムな4隅に移動
    execute store result score $CO.Temp.Rotation Global run random value 0..3
    execute store result entity @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] Rotation[0] float 1 run scoreboard players operation $CO.Temp.Rotation Global *= $90 Const
    execute at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~45 ~ run summon area_effect_cloud ^ ^ ^32 {Tags:["CO.Aec.Destination"],Duration:80}
    tag @s add CO.Skill.Move
