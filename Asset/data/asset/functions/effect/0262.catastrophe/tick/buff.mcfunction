#> asset:effect/0262.catastrophe/tick/buff
#
# バフを付与する
#
# @within function asset:effect/0262.catastrophe/tick/

# 崩壊
    data modify storage api: Argument.ID set value 263
    function api:entity/mob/effect/give

# スコアをリセット
    scoreboard players reset @s 7A.BattleTime
