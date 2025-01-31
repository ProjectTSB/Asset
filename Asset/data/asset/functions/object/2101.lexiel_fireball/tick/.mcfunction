#> asset:object/2101.lexiel_fireball/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2101/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# ちょっと追尾
   execute facing entity @p[gamemode=!spectator,distance=..10] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~


    execute at @s run function asset:object/super.tick
# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
