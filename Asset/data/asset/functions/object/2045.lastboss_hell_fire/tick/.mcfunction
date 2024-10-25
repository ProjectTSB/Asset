#> asset:object/2045.lastboss_hell_fire/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2045/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 消滅処理
    kill @s[scores={General.Object.Tick=400..}]

# Super!
    function asset:object/super.tick

# 誘導！
    function asset:object/2045.lastboss_hell_fire/tick/homing.m with storage asset:context this
