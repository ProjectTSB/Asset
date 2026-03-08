#> asset:object/2262.gem_panjan_drone/tick/link_model.m
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/

# モデル紐づけ
    $execute as @e[type=item_display,tag=2262.Model,distance=..30] if score @s CO.ObjectId matches $(ObjectId) run tag @s add 2262.Model.Target
