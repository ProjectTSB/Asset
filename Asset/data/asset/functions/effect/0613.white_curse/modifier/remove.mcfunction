#> asset:effect/0613.white_curse/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0613.white_curse/end/
#   asset:effect/0613.white_curse/re-given/
#   asset:effect/0613.white_curse/remove/

# 魔法耐性
    data modify storage api: Argument.UUID set value [I;1,3,613,0]
    function api:modifier/defense/magic/remove
