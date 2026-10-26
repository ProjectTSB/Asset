#> asset:mob/0059.jack_o_lantern/tick/skill/common/invulnerable/end
#
#
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/**

    data modify entity @s Invulnerable set value 0b
    tag @s remove Uninterferable
