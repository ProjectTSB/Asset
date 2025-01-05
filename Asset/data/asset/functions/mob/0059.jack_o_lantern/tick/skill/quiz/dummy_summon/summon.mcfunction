#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/dummy_summon/summon
#
# 偽物を召喚する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/dummy_summon/

# 召喚
    data modify storage api: Argument.ID set value 224
    function api:mob/summon
