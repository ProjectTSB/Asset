#> asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/1
#
# 雷のカーテンのメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/3.skill_branch

# 予備動作
    execute if entity @s[scores={26.Tick=0}] run playsound entity.zombie_villager.converted hostile @a ~ ~ ~ 1 1.5 0

# 発動
    execute if entity @s[scores={26.Tick=10}] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/2.active

# リセット
    execute if entity @s[scores={26.Tick=50..}] run function asset:mob/0078.messenger_of_thunder/tick/reset
