#> asset:object/2131.blood_knife/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2131/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# パーティクル
    particle dust 0.541 0 0 1 ~ ~ ~ 0 0 0 0 2
    particle electric_spark ~ ~ ~ 0 0 0 0 0
# ヒット処理
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!spectator,dx=0] run function asset:object/2131.blood_knife/tick/hit

# 進む
    execute if entity @p[gamemode=!spectator,distance=..100] facing entity @p[gamemode=!spectator] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ^ ^ ^1 ~ ~
# 変な状況でも動きはする
    execute unless entity @p[gamemode=!spectator,distance=..100] run tp @s ^ ^ ^0.5 ~ ~

# 消滅処理
    kill @s[scores={General.Object.Tick=40..}]
