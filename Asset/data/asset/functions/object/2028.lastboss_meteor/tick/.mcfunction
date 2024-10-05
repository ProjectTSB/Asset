#> asset:object/2028.lastboss_meteor/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2028/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]

# 実装フラグを立てる
    data modify storage asset:object Implement set value true