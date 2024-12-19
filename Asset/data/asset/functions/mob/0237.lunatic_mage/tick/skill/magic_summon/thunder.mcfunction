#> asset:mob/0237.lunatic_mage/tick/skill/magic_summon/firethunder
#
# 雷魔法を召喚します
#
# @within function asset:mob/0237.lunatic_mage/tick/skill/**

# 召喚
    data modify storage api: Argument.ID set value 191
    function api:mob/summon
