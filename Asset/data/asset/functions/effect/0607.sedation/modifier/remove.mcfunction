#> asset:effect/0607.sedation/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0607.sedation/end/
#   asset:effect/0607.sedation/re-given/
#   asset:effect/0607.sedation/remove/

# 補正を削除
    data modify storage api: Argument.UUID set value [I;1,3,607,0]
    function api:modifier/attack/base/remove
