#> asset:object/2001.slash_effect/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2001/tick

# スコアが正かつ透明状態なら可視化
    execute if score @s General.Object.Tick matches 1.. if entity @s[tag=2001.Invisible] run function asset:object/2001.slash_effect/tick/visible

# スコア反転
    execute if score @s General.Object.Tick matches ..-1 run scoreboard players operation @s General.Object.Tick *= $-1 Const

# スコアがFrame以下ならCustomModelDataを切り替える
    execute if score @s General.Object.Tick <= @s 2001.Frame store result entity @s item.tag.CustomModelData int -1 run data get entity @s item.tag.CustomModelData -1.0000001

# スコアが1以下ならキル
    execute if score @s General.Object.Tick matches 1 run kill @s

# スコア減少
    scoreboard players remove @s General.Object.Tick 1

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
