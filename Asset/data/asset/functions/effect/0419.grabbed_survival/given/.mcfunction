#> asset:effect/0419.grabbed_survival/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0419.grabbed_survival/_/given

# modifier適用
    function asset:effect/0419.grabbed_survival/modifier/add

# 演出
    playsound entity.leash_knot.place player @a ~ ~ ~ 1.0 0.6
    playsound block.bubble_column.upwards_inside player @a ~ ~ ~ 1.0 1.7
