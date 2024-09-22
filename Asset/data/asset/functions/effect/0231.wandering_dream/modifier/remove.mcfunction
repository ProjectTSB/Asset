#> asset:effect/0231.wandering_dream/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0231.wandering_dream/end/
#   asset:effect/0231.wandering_dream/re-given/
#   asset:effect/0231.wandering_dream/remove/

# 魔法耐性
    data modify storage api: Argument.UUID set value [I;1,3,231,0]
    function api:modifier/defense/magic/remove

# 被回復量
    data modify storage api: Argument.UUID set value [I;1,3,231,0]
    function api:modifier/receive_heal/remove