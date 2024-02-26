#> asset:mob/0340.twins_rubiel/tick/app/skill/select/5.1.interrupt_kt
#
# 刀装備時の行動決定
#
# @within
#    function asset:mob/0340.twins_rubiel/app/call_from_root/1.interrupt
#    function asset:mob/0340.twins_rubiel/hurt/app/5.counter

# カウンター増加
    scoreboard players add @s 9G.ActionCount 1

# 位置関係 * 1
    execute if score @s 9G.ActionCount matches ..1 run function asset:mob/0340.twins_rubiel/tick/app/skill/select/6.1.kt_normal
# 気分 * 2
    execute if score @s 9G.ActionCount matches 2..3 run function asset:mob/0340.twins_rubiel/tick/app/skill/select/6.2.kt_feeling
# 強め * 1
    execute if score @s 9G.ActionCount matches 4 run function asset:mob/0340.twins_rubiel/tick/app/skill/select/6.3.kt_strong
# 位置関係 * 1
    execute if score @s 9G.ActionCount matches 5 run function asset:mob/0340.twins_rubiel/tick/app/skill/select/6.1.kt_normal
# 気分 * 3
    execute if score @s 9G.ActionCount matches 6..8 run function asset:mob/0340.twins_rubiel/tick/app/skill/select/6.2.kt_feeling
# 強め * 1
    execute if score @s 9G.ActionCount matches 9.. run function asset:mob/0340.twins_rubiel/tick/app/skill/select/6.3.kt_strong

# カウンターリセット
    execute if score @s 9G.ActionCount matches 9.. run scoreboard players set @s 9G.ActionCount 0
