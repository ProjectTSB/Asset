#> asset:effect/0261.gale_blessing/modfier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/0261.gale_blessing/end/
#   asset:effect/0261.gale_blessing/re-given/
#   asset:effect/0261.gale_blessing/remove/
#   asset:effect/0261.gale_blessing/tick/

# 移動速度バフ削除
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-010500000000

# Tag削除
    tag @s remove 79.InBattle
