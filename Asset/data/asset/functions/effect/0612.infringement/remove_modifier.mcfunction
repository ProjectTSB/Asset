#> asset:effect/0612.infringement/remove_modifier
#
# 補正を削除する
#
# @within function
#   asset:effect/0612.infringement/end/
#   asset:effect/0612.infringement/re-given/
#   asset:effect/0612.infringement/remove/

# ノクバ耐性削除
    attribute @s generic.knockback_resistance modifier remove 00000001-0000-0003-0000-026400000000


# 補正を削除する
    data modify storage api: Argument.UUID set value [I;1,3,612,0]
    function api:modifier/defense/base/remove