#> asset:object/0005.slash_effect_abs/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/5/tick

# スコアが正かつ透明状態なら可視化
    execute if score @s General.Object.Tick matches 1.. if entity @s[tag=5.Invisible] run data modify entity @s transformation.scale[0] set from storage asset:context this.Scale
    execute if score @s General.Object.Tick matches 1.. if entity @s[tag=5.Invisible] run data modify entity @s transformation.scale[1] set from storage asset:context this.Scale
    execute if score @s General.Object.Tick matches 1.. if entity @s[tag=5.Invisible] run tellraw @a {"entity":"@s","nbt":"transformation.scale"}
    execute if score @s General.Object.Tick matches 1.. if entity @s[tag=5.Invisible] run tag @s remove 5.Invisible

# スコア反転
    execute if score @s General.Object.Tick matches ..-1 run scoreboard players operation @s General.Object.Tick *= $-1 Const

# スコアが3と2なら切り替え
    execute if score @s General.Object.Tick matches 3 store result entity @s item.tag.CustomModelData int -1 run data get entity @s item.tag.CustomModelData -1.0000001
    execute if score @s General.Object.Tick matches 2 store result entity @s item.tag.CustomModelData int -1 run data get entity @s item.tag.CustomModelData -1.0000001

# スコアが1以下ならキル
    execute if score @s General.Object.Tick matches 1 run kill @s

# スコア減少
    scoreboard players remove @s General.Object.Tick 1

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
