#> asset:effect/0612.infringement/remove_modifier
#
# 補正を削除する
#
# @within function
#   asset:effect/0612.infringement/end/
#   asset:effect/0612.infringement/re-given/
#   asset:effect/0612.infringement/remove/

# 移動速度とノクバ耐性削除
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-026400000000
    attribute @s generic.knockback_resistance modifier remove 00000001-0000-0003-0000-026400000000

# 跳躍Lv129を削除
    execute if predicate asset:effect/0612.infringement/jump_boost_129 run effect clear @s jump_boost

# 補正を削除する
    data modify storage api: Argument.UUID set value [I;1,3,612,0]
    function api:modifier/defense/base/remove