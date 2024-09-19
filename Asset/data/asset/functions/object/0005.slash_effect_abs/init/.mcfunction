#> asset:object/0005.slash_effect_abs/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/5/init

# アイテムディスプレイに表示するItemをFieldから代入する
    data modify entity @s item set from storage asset:context this.item

# 初期設定を行う（一時ストレージからもってくる）
    execute unless data storage asset:temp 5.Color run data modify storage asset:temp 5.Color set value 0
    execute unless data storage asset:temp 5.Second run data modify storage asset:temp 5.Second set value 10
    execute unless data storage asset:temp 5.Scale run data modify storage asset:temp 5.Scale set value 5f
    data modify entity @s item.tag.display.color set from storage asset:temp 5.Color
    execute store result score @s General.Object.Tick run data get storage asset:temp 5.Second -1
    data modify storage asset:context this.Scale set from storage asset:temp 5.Scale

# リセット
    data remove storage asset:temp 5

# タグ付け
    tag @s add 5.SlashEffectInit
    tag @s add 5.Invisible
