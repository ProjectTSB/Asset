#> asset:mob/0369.prominence_spellbook/tick/2.ready
#
#
#
# @within function asset:mob/0369.prominence_spellbook/tick/1

# 周囲にプレイヤーがいなければリセット
    execute if entity @s[scores={A9.Tick=0}] unless entity @p[distance=..20] run function asset:mob/0369.prominence_spellbook/tick/4.reset


# 魔法を召喚
    execute if entity @s[scores={A9.Tick=10..}] anchored eyes positioned ^ ^ ^0.2 run function asset:mob/0369.prominence_spellbook/tick/3.summon
