#> asset:mob/0340.twins_rubiel/tick/app/skill/select/3.equip
#
# 武器を装備する
#
# @within
#    function asset:mob/0340.twins_rubiel/tick/app/skill/select/1.main
#    function asset:mob/0340.twins_rubiel/app/call_from_root/1.interrupt
#    function asset:mob/0340.twins_rubiel/hurt/app/5.counter

# ハードの場合、ランダムで武器を装備
    # execute if predicate api:global_vars/difficulty/min/3_blessless

# ノーマルの場合、強制で刀装備
    tag @s add 9G.Skill.Kt.Start

# 終了
    tag @s add 9G.Temp.Animated
