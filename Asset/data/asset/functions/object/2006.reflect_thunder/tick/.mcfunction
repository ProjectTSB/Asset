#> asset:object/2006.reflect_thunder/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2006/tick

# Tick加算
   scoreboard players add @s General.Object.Tick 1

# 消滅処理
   kill @s[scores={General.Object.Tick=1000..}]

# 実装フラグを立てる
data modify storage asset:object Implement set value true