#> asset:object/2266.field_modify/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/2266/init

# モデル上書き
    data modify entity @s item.id set from storage asset:context this.Model

# 色設定
    execute store result score @s 2266.Color run data get storage asset:context this.Color
