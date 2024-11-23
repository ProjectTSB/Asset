#> asset:object/2024.void_spellbook_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2024/tick

#> Index
    #declare function asset:object/0001.abstract_projectile/tick/recursive

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# パーティクル
    particle fishing ~ ~ ~ 0.2 0.2 0.2 0.05 1 force @a[distance=..32]
    particle minecraft:dust 0.35 0.07 0.55 1 ~ ~ ~ 0.2 0.2 0.2 0 1 force @a[distance=..32]

# フィールドのデータからスコアを設定
    execute store result score @s 1.Speed run data get storage asset:context this.Speed

# 再帰する
    function asset:object/0001.abstract_projectile/tick/recursive
