#> asset:mob/0340.twins_rubiel/tick/app/skill/select/3.equip
#
# 武器を装備する
#
# @within function asset:mob/0340.twins_rubiel/tick/app/skill/select/1.main

# ハードの場合、ランダムで武器を装備
    # execute if predicate api:global_vars/difficulty/min/hard

# ノーマルの場合、強制で刀装備
    tag @s add 9G.Skill.Kt.Start

# 終了
    tag @s add 9G.Temp.Animated
