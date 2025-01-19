#> asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/end
#
# 終了処理
#
# @within function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/

# スコアをリセットする
    scoreboard players reset @s AV.AnimationNum
    scoreboard players set @s AV.AnimationTick 0

# 上位スキルタグがついていたら
    execute unless entity @s[tag=AV.SuperiorSkill] run function asset:mob/0391.axia_first/ai/animation/8_0_warp_slash/end2
    execute if entity @s[tag=AV.SuperiorSkill] run function asset:mob/0391.axia_first/ai/general/7.idle_motion_change

# 上位スキルタグを付ける
    tag @s add AV.SuperiorSkill
