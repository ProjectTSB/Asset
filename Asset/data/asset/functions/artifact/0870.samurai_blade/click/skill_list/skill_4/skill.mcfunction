#> asset:artifact/0870.samurai_blade/click/skill_list/skill_4/skill
#
#
#
# @within function asset:artifact/0870.samurai_blade/click/skill_list/skill_active

# スコアを増やす
    execute if score @s O6.Time matches 1.. run scoreboard players add @s O6.Time 1

# 剣を振る
    execute if score @s O6.Time matches 2 anchored eyes run function asset:artifact/0870.samurai_blade/click/particle/particle4
    execute if score @s O6.Time matches 2 run function asset:artifact/0870.samurai_blade/click/slash
    execute if score @s O6.Time matches 4 anchored eyes run function asset:artifact/0870.samurai_blade/click/particle/particle6
    execute if score @s O6.Time matches 4 run function asset:artifact/0870.samurai_blade/click/slash
# スコアを消す
    execute if score @s O6.Time matches 4 run scoreboard players reset @s O6.Time