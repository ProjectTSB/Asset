#> asset:mob/0436.landmine/tick/detonate/debuff
#
# 
#
# @within function asset:mob/0436.landmine/tick/detonate/detonate

# 移動速度低下
    data modify storage api: Argument.ID set value 67
    data modify storage api: Argument.Stack set value 4
    data modify storage api: Argument.Duration set value 300
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
