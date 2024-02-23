#> asset:mob/0339.twins_sapphiel/tick/app/skill/select/3.equip
#
# 武器を装備する
#
# @within function asset:mob/0339.twins_sapphiel/tick/app/skill/select/1.main

# ハードの場合、ランダムで武器を装備
    # execute if predicate api:global_vars/difficulty/min/hard

# ノーマルの場合、強制でハンドガン装備
    tag @s add 9F.Skill.Hg.Start

# 終了
    tag @s add 9F.Temp.Animated
