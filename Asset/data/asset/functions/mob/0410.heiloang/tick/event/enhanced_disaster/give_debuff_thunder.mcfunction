#> asset:mob/0410.heiloang/tick/event/enhanced_disaster/give_debuff_thunder
#
# エンハンスドディザスター
#
# @within asset:mob/0410.heiloang/tick/event/enhanced_disaster/give_debuff

# 雷耐性低下
    data modify storage api: Argument set value {ID:658,Duration:350,Stack:1}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 演出
    particle dust 0.875 0.671 0.29 2 ~ ~1 ~ 1.5 1.5 1.5 0 30
