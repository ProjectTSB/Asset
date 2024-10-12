#> asset:object/2044.lastboss_ice_bullet/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2044/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=400..}]

# Super!
    function asset:object/super.tick

# 誘導！
    function asset:object/2044.lastboss_ice_bullet/tick/homing.m with storage asset:context this

# 実装フラグを立てる
    data modify storage asset:object Implement set value true
