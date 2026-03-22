#> asset:mob/0456.gargo_ex_machina/tick/act/phase_1/move_to_corner
#
# Mobのtick時の処理
#
# @within asset:mob/0456.gargo_ex_machina/tick/act/phase_1/

#> Private
# @within function asset:mob/0456.gargo_ex_machina/tick/act/phase_1/move_to_corner
    #declare score_holder $CO.Temp.Rotation

# 中心点ランダム回転
    execute store result score $CO.Temp.Rotation Global run random value 0..3
    execute store result entity @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] Rotation[0] float 1 run scoreboard players operation $CO.Temp.Rotation Global *= $90 Const
    scoreboard players reset $CO.Temp.Rotation

# 4隅にポイント召喚
    execute at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~45 ~ run summon area_effect_cloud ^ ^ ^32 {Tags:["CO.Aec.Destination"],Duration:80}
    execute at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~135 ~ run summon area_effect_cloud ^ ^ ^32 {Tags:["CO.Aec.Destination"],Duration:80}
    execute at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~225 ~ run summon area_effect_cloud ^ ^ ^32 {Tags:["CO.Aec.Destination"],Duration:80}
    execute at @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] rotated ~315 ~ run summon area_effect_cloud ^ ^ ^32 {Tags:["CO.Aec.Destination"],Duration:80}

# 自身に近い位置と、ランダム２か所を削除
    kill @e[type=area_effect_cloud,tag=CO.Aec.Destination,distance=..80,sort=nearest,limit=1]
    kill @e[type=area_effect_cloud,tag=CO.Aec.Destination,distance=..80,sort=random,limit=2]

# 終了
    tag @s add CO.Skill.Move
