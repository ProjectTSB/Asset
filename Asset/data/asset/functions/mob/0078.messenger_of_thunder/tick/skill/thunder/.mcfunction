#> asset:mob/0078.messenger_of_thunder/tick/skill/thunder/
#
# 雷落としのメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill_branch

# AECを召喚
    execute if entity @s[scores={26.Tick=0}] at @p run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder/thunder_point1

# リセット
    execute if entity @s[scores={26.Tick=30..}] run function asset:mob/0078.messenger_of_thunder/tick/skill/reset
