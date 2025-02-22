#> asset:mob/0059.jack_o_lantern/tick/skill/quiz/dummy_summon/summon
#
# 偽物を召喚する
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/quiz/dummy_summon/

# FaceListがあればFieldOverrideへ突っ込む
    execute if data storage asset:context this.FaceList run data modify storage api: Argument.FieldOverride.FaceList set from storage asset:context this.FaceList

# 召喚
    data modify storage api: Argument.ID set value 224
    function api:mob/summon
