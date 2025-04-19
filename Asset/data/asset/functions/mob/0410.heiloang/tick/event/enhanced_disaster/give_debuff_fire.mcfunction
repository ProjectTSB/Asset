#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/give_debuff_fire
#
# エンハンスドディザスター
#
# @within asset:mob/0410.heiloang/tick/event/enhanced_disaster/give_debuff

# 火耐性低下
    data modify storage api: Argument set value {ID:656,Duration:350,Stack:1}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    particle dust 0.541 0.184 0.184 2 ~ ~1 ~ 1.5 1.5 1.5 0 30
