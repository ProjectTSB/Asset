#> asset:object/2155.haruclaire_icelaser/tick/kill
#
# Objectのtick時の処理
#
# @within asset:object/2155.haruclaire_icelaser/tick/

# 他にレーザーが存在しない場合、全員のヒット判定タグ消去
    execute unless entity @e[type=item_display,scores={ObjectID=2155},distance=..128,limit=1] run tag @a remove 2155.Hit

# 消去
    kill @s
