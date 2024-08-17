#> asset:mob/0391.axia_first/ai/animation/100_0_opening/end
#
# 終了処理
#
# @within function asset:mob/0391.axia_first/ai/animation/100_0_opening/

# 待機アニメーションに移行
    scoreboard players set @s AV.AnimationNum 10
    scoreboard players set @s AV.AnimationTick 0

# 干渉可能となる
    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable
