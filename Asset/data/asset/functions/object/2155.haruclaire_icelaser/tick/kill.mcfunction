#> asset:object/2155.haruclaire_icelaser/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2155.haruclaire_icelaser/tick/

# 他にレーザーが存在しない場合、全員のヒット判定タグ消去
    tag @s remove 2155.Object
    execute unless entity @e[type=item_display,tag=2155.Object] run tag @a[tag=2155.Hit] remove 2155.Hit

# 消去
    kill @s
