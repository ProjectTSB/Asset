#> asset:mob/0301.sinful_thoughts/tick/gun/
#
#
#
# @within function asset:mob/0301.sinful_thoughts/tick/skill_active

# 最初に実行
    execute if score @s 8D.Tick matches 0 run function asset:mob/0301.sinful_thoughts/tick/gun/first

# プレイヤーの前方を見て発砲
    execute if score @s 8D.Tick matches 14 run function asset:mob/0301.sinful_thoughts/tick/gun/deviation
    execute if score @s 8D.Tick matches 17 rotated ~-90 ~ run function asset:mob/0301.sinful_thoughts/tick/common/gun/1.ready
# プレイヤーの前方を見て発砲
    execute if score @s 8D.Tick matches 18 run function asset:mob/0301.sinful_thoughts/tick/gun/deviation
    execute if score @s 8D.Tick matches 21 rotated ~-90 ~ run function asset:mob/0301.sinful_thoughts/tick/common/gun/1.ready
# プレイヤーの前方を見て発砲
    execute if score @s 8D.Tick matches 22 run function asset:mob/0301.sinful_thoughts/tick/gun/deviation
    execute if score @s 8D.Tick matches 25 rotated ~-90 ~ run function asset:mob/0301.sinful_thoughts/tick/common/gun/1.ready

# リセット
    execute if score @s 8D.Tick matches 40 run function asset:mob/0301.sinful_thoughts/tick/reset
