#> asset:object/0001.abstract_projectile/init/
#
# Objectのinit時の処理
#
# @within asset:object/alias/1/init

# エラー
    execute unless score @s 1.Speed matches 0.. run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"速度が設定されていない！"}]
    execute unless score @s 1.Speed matches 0.. run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"飛距離が設定されていない！"}]

# フィールドのデータからスコアを設定
    execute store result score @s 1.Speed run data get storage asset:context this.Speed
    execute store result score @s 1.Range run data get storage asset:context this.Range
