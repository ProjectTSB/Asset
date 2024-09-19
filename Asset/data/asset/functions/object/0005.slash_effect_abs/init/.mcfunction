#> asset:object/0005.slash_effect_abs/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/5/init

# アイテムディスプレイに表示するItemをFieldから代入する
    data modify entity @s item set from storage asset:context this.item

# 初期設定を行う（FieldOverride）
    execute unless data storage asset:context this.Color run data modify storage asset:context this.Color set value 0
    execute unless data storage asset:context this.Second run data modify storage asset:context this.Second set value 10
    execute unless data storage asset:context this.Scale run data modify storage asset:context this.Scale set value 5f
    data modify entity @s item.tag.display.color set from storage asset:context this.Color
    execute store result score @s General.Object.Tick run data get storage asset:context this.Second -1

# タグ付け
    tag @s add 5.SlashEffectInit
    tag @s add 5.Invisible
