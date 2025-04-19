#> asset:mob/0390.triple_rabbits/ai/general/penalty/check
#
#
#
# @within function asset:mob/0390.triple_rabbits/tick/

# 一定範囲内にいたらスコア増加
    execute positioned ~-25 ~3.75 ~-25 if entity @s[dx=49,dy=25,dz=49] run scoreboard players add @s AU.PenaltyTick 1

# 一定範囲内にいなければスコアをリセット
    execute positioned ~-25 ~3.75 ~-25 unless entity @s[dx=49,dy=25,dz=49] run scoreboard players reset @s AU.PenaltyTick

# 3秒以上留まっていたらペナルティバレット召喚
    execute if score @s AU.PenaltyTick matches 60.. at @s positioned ~ ~1 ~ run function asset:mob/0390.triple_rabbits/ai/general/penalty/summon_bullet

# 3秒以上留まっていたらペナルティのスコアをリセット
    execute if score @s AU.PenaltyTick matches 60.. run scoreboard players reset @s AU.PenaltyTick
