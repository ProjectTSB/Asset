#> asset:mob/0046.clock_of_despair/tick/skill/common/fire/summon.m
# @input args
#   PrepareTime: int
# @within function asset:mob/0046.clock_of_despair/tick/skill/**

# 召喚
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride.Color set value 16764108
    data modify storage api: Argument.FieldOverride.Scale set value [8f,8f,0.01f]
    $data modify storage api: Argument.FieldOverride.Tick set value $(PrepareTime)
    function api:object/summon
# 演出
    playsound item.firecharge.use hostile @a ~ ~ ~ 1 1.4
