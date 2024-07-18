#> asset:mob/0078.messenger_of_thunder/tick/skill/cross_thunder/1
#
# クロスサンダーのメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/3.skill_branch

# 演出
    execute if entity @s[scores={26.Tick=0}] run playsound entity.zombie_villager.converted hostile @a[distance=..30] ~ ~ ~ 2 1.5 1

# 各位置でクロスサンダーを召喚
    execute if entity @s[scores={26.Tick=2}] at @p[distance=..50] rotated ~ 0 positioned ^4.5 ^ ^4.5 run function asset:mob/0078.messenger_of_thunder/tick/skill/cross_thunder/2.spread
    execute if entity @s[scores={26.Tick=4}] at @p[distance=..50] rotated ~ 0 positioned ^4.5 ^ ^-4.5 run function asset:mob/0078.messenger_of_thunder/tick/skill/cross_thunder/2.spread
    execute if entity @s[scores={26.Tick=6}] at @p[distance=..50] rotated ~ 0 positioned ^-4.5 ^ ^4.5 run function asset:mob/0078.messenger_of_thunder/tick/skill/cross_thunder/2.spread
    execute if entity @s[scores={26.Tick=8}] at @p[distance=..50] rotated ~ 0 positioned ^-4.5 ^ ^-4.5 run function asset:mob/0078.messenger_of_thunder/tick/skill/cross_thunder/2.spread
    #execute if entity @s[tag=26.HPLess50Per,scores={26.Tick=10}] at @p[distance=..50] run function asset:mob/0078.messenger_of_thunder/tick/skill/cross_thunder/2.spread

# リセット
    execute if entity @s[scores={26.Tick=26..}] run function asset:mob/0078.messenger_of_thunder/tick/reset
