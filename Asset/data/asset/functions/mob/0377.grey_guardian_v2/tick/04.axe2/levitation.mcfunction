#> asset:mob/0377.grey_guardian_v2/tick/04.axe2/levitation
#
# 打ち上げ
#
# @within function asset:mob/0377.grey_guardian_v2/tick/04.axe2/damage_on_ground

# 浮遊を付与
# 難易度でスタックを変更
    execute if predicate api:global_vars/difficulty/easy run data modify storage api: Argument.Stack set value 60
    execute if predicate api:global_vars/difficulty/normal run data modify storage api: Argument.Stack set value 80
    execute if predicate api:global_vars/difficulty/min/hard run data modify storage api: Argument.Stack set value 100
    data modify storage api: Argument.ID set value 125
    data modify storage api: Argument.Duration set value 4
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
