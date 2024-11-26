#> asset:artifact/0554.catastrophe/trigger/fullset/attack/4.give_buff
#
# バフを得る
#
# @within function asset:artifact/0554.catastrophe/trigger/fullset/attack/2.main

# 破滅の騎士道(ID:263)を得る
    data modify storage api: Argument.ID set value 263
    function api:entity/mob/effect/give

# スコアを10000減らす
# 余剰分もリセットすると無駄が発生してしまうため
    scoreboard players remove @s FE.DamageSum 10000

say a
