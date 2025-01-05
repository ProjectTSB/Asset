#> asset:mob/0016.shirker/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/16/death

# 演出
    particle bubble ~ ~ ~ 2 2 2 0 100 normal @a

# 死亡時監視者を3体召喚
    data modify storage api: Argument.ID set value 15
    function api:mob/summon
    data modify storage api: Argument.ID set value 15
    function api:mob/summon
    data modify storage api: Argument.ID set value 15
    function api:mob/summon
