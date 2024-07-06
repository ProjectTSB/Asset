#> asset:mob/0076.golden_watermelon_bomber/tick/3.throw_watermelon
#
#
#
# @within function asset:mob/0076.golden_watermelon_bomber/tick/2.tick

# スイカ投げ
    data modify storage api: Argument.ID set value 77
    execute anchored eyes positioned ^0.5 ^-0.35 ^ positioned ~ ~1000 ~ run function api:mob/summon

# スコアリセット
    scoreboard players reset @s 24.Tick
