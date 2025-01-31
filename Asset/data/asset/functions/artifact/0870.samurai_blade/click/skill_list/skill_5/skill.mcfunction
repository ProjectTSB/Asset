#> asset:artifact/0870.samurai_blade/click/skill_list/skill_5/skill
#
#
#
# @within function asset:artifact/0870.samurai_blade/click/skill_list/skill_active

# スコアを増やす
    execute if score @s O6.Time matches 1.. run scoreboard players add @s O6.Time 1

# 剣を振る
    execute if score @s O6.Time matches 2 anchored eyes run function asset:artifact/0870.samurai_blade/click/particle/particle5
    execute if score @s O6.Time matches 2 run function asset:artifact/0870.samurai_blade/click/slash

    execute if score @s O6.Time matches 3 anchored eyes positioned ^-0.2 ^ ^ run function asset:artifact/0870.samurai_blade/click/particle/particle7
    execute if score @s O6.Time matches 3 run function asset:artifact/0870.samurai_blade/click/slash

    execute if score @s O6.Time matches 4 anchored eyes positioned ^-0.2 ^ ^ run function asset:artifact/0870.samurai_blade/click/particle/particle6
    execute if score @s O6.Time matches 4 run function asset:artifact/0870.samurai_blade/click/slash

    execute if score @s O6.Time matches 5 anchored eyes positioned ^-0.2 ^0.2 ^ run function asset:artifact/0870.samurai_blade/click/particle/particle9
    execute if score @s O6.Time matches 5 run function asset:artifact/0870.samurai_blade/click/slash

    execute if score @s O6.Time matches 6 anchored eyes positioned ^-0.6 ^-0.2 ^ run function asset:artifact/0870.samurai_blade/click/particle/particle8
    execute if score @s O6.Time matches 6 run function asset:artifact/0870.samurai_blade/click/slash

    execute if score @s O6.Time matches 15 anchored eyes run function asset:artifact/0870.samurai_blade/click/particle/particle1
    execute if score @s O6.Time matches 15 anchored eyes run function asset:artifact/0870.samurai_blade/click/particle/particle2
    execute if score @s O6.Time matches 15 anchored eyes run function asset:artifact/0870.samurai_blade/click/particle/particle3
    execute if score @s O6.Time matches 15 run function asset:artifact/0870.samurai_blade/click/slash
# スコアを消す
    execute if score @s O6.Time matches 25 run function asset:artifact/0870.samurai_blade/click/reset