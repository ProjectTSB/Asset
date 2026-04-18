#> asset:object/2261.gem_yeeter_drone/tick/link_model.m
#
# Objectのtick時の処理
#
# @within asset:object/2261.gem_yeeter_drone/tick/

# 一定間隔で攻撃
    $execute as @e[type=item_display,tag=2261.Model,distance=..30] if score @s CO.ObjectId matches $(ObjectId) run tag @s add 2261.Model.Target
