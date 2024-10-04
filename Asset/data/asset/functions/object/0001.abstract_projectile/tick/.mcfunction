#> asset:object/0001.abstract_projectile/tick/
#
# Objectのtick時の処理
#
# @within function asset:object/alias/1/tick

# フィールドのデータからスコアを設定
    execute store result score @s 1.Speed run data get storage asset:context this.Speed

execute if data storage asset:context this.Speed run say abstract.tick

# 再帰する
    function asset:object/0001.abstract_projectile/tick/recursive
