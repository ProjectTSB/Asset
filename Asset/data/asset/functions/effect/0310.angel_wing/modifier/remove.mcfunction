#> asset:effect/0310.angel_wing/modifier/remove
#
#
#
# @within function
#   asset:effect/0310.angel_wing/end/
#   asset:effect/0310.angel_wing/remove/

# 補正を削除する
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-013600000000

# 跳躍も消す
    effect clear @s jump_boost
