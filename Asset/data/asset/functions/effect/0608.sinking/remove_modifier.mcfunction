#> asset:effect/0608.sinking/remove_modifier
#
# 補正を削除
#
# @within function
#   asset:effect/0608.sinking/end/
#   asset:effect/0608.sinking/re-given/
#   asset:effect/0608.sinking/remove/

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,608,0]
    function api:modifier/attack/base/remove