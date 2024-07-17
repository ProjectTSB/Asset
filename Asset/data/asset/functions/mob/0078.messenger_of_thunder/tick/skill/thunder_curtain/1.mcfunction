#> asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/1
#
# 雷のカーテンのメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/3.skill_branch

# 予備動作
    execute if entity @s[scores={26.Tick=0}] run playsound entity.zombie_villager.converted hostile @a[distance=..30] ~ ~ ~ 2 1.5 1
    execute if entity @s[scores={26.Tick=0..19}] rotated ~ 0 positioned ^ ^0.2 ^0.8 run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/2.ready

# 発動
    execute if entity @s[scores={26.Tick=20}] run function asset:mob/0078.messenger_of_thunder/tick/skill/thunder_curtain/3.active

# リセット
    execute if entity @s[scores={26.Tick=60..}] run function asset:mob/0078.messenger_of_thunder/tick/reset
