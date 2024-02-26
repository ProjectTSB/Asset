#> asset:mob/0339.twins_sapphiel/tick/app/skill/select/5.1.interrupt_hg
#
# ハンドガン装備時の行動決定
#
# @within
#    function asset:mob/0339.twins_sapphiel/app/call_from_root/1.interrupt
#    function asset:mob/0339.twins_sapphiel/hurt/app/3.counter

# カウンター増加
    scoreboard players add @s 9F.ActionCount 1

# 通常 * 1
    execute if score @s 9F.ActionCount matches ..1 run function asset:mob/0339.twins_sapphiel/tick/app/skill/select/6.1.hg_normal
# 移動 * 2
    execute if score @s 9F.ActionCount matches 2..3 run function asset:mob/0339.twins_sapphiel/tick/app/skill/select/6.2.hg_move
# 強め * 1
    execute if score @s 9F.ActionCount matches 4 run function asset:mob/0339.twins_sapphiel/tick/app/skill/select/6.3.hg_strong
# 通常 * 2
    execute if score @s 9F.ActionCount matches 5..6 run function asset:mob/0339.twins_sapphiel/tick/app/skill/select/6.1.hg_normal
# 移動 * 1
    execute if score @s 9F.ActionCount matches 7 run function asset:mob/0339.twins_sapphiel/tick/app/skill/select/6.2.hg_move
# 強め * 1
    execute if score @s 9F.ActionCount matches 8.. run function asset:mob/0339.twins_sapphiel/tick/app/skill/select/6.3.hg_strong

# カウンターリセット
    execute if score @s 9F.ActionCount matches 8.. run scoreboard players set @s 9F.ActionCount 0
