#> asset:mob/0078.messenger_of_thunder/tick/skill/cross_thunder/
#
# クロスサンダーのメイン処理
#
# @within function asset:mob/0078.messenger_of_thunder/tick/skill_branch

# 演出
    execute if entity @s[scores={General.Mob.Tick=0}] run playsound entity.zombie_villager.converted hostile @a[distance=..30] ~ ~ ~ 2 1.5 1

# 各位置でクロスサンダーを召喚
    execute if entity @s[scores={General.Mob.Tick=2}] at @p[gamemode=!spectator,distance=..50] run function asset:mob/0078.messenger_of_thunder/tick/skill/cross_thunder/spread
    execute if entity @s[scores={General.Mob.Tick=4}] at @p[gamemode=!spectator,distance=..50] run function asset:mob/0078.messenger_of_thunder/tick/skill/cross_thunder/spread
    execute if entity @s[scores={General.Mob.Tick=6}] at @p[gamemode=!spectator,distance=..50] run function asset:mob/0078.messenger_of_thunder/tick/skill/cross_thunder/spread
    execute if entity @s[scores={General.Mob.Tick=8}] at @p[gamemode=!spectator,distance=..50] run function asset:mob/0078.messenger_of_thunder/tick/skill/cross_thunder/spread

# リセット
    execute if entity @s[scores={General.Mob.Tick=26..}] run function asset:mob/0078.messenger_of_thunder/tick/skill/reset
