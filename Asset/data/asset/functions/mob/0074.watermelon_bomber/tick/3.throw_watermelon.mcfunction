#> asset:mob/0074.watermelon_bomber/tick/3.throw_watermelon
#
#
#
# @within function asset:mob/0074.watermelon_bomber/tick/2.tick

# スイカ投げ
    data modify storage api: Argument.ID set value 75
    function api:mob/summon

# スコアリセット
    scoreboard players reset @s 22.Tick
