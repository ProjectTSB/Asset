#> asset:mob/0339.twins_sapphiel/tick/app/skill/select/3.equip
#
# 武器を装備する
#
# @within
#    function asset:mob/0339.twins_sapphiel/tick/app/skill/select/1.main
#    function asset:mob/0339.twins_sapphiel/app/call_from_root/1.interrupt
#    function asset:mob/0339.twins_sapphiel/hurt/app/3.counter

# ハードの場合、ランダムで武器を装備
    # execute if predicate api:global_vars/difficulty/min/3_blessless

# ノーマルの場合、強制でハンドガン装備
    tag @s add 9F.Skill.Hg.Start

# 終了
    tag @s add 9F.Temp.Animated
