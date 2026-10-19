#> asset:effect/0419.grabbed_survival/modifier/remove
#
#
#
# @within function asset:effect/0419.grabbed_survival/end/
# @within function asset:effect/0419.grabbed_survival/remove/

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,3,419,0]
    function api:modifier/defense/water/remove
