#> asset:mob/0456.gargo_ex_machina/tick/act/phase_2/move_to_line
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/act/phase_2/

# ランダムな4辺中央に移動
    execute store result score $CO.Temp.Rotation Global run random value 0..3
    execute store result entity @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] Rotation[0] float 1 run scoreboard players operation $CO.Temp.Rotation Global *= $90 Const
    execute at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~ ~ run summon area_effect_cloud ^ ^ ^-25 {Tags:["CO.Aec.Destination"],Duration:80}
    tag @s add CO.Skill.Move
