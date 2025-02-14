#> asset:object/2203.sonicbomber_destroyed/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2203/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 爆発処理
    execute if entity @s[scores={General.Object.Tick=80..}] at @s run function asset:object/2203.sonicbomber_destroyed/tick/explode

# 移動
    execute positioned ~ ~-0.1 ~ run tp @s ^ ^ ^0.8

# 炎上パーティクル
    particle flame ^1 ^0.8 ^0.3 0 0 0 0.03 10 force
    particle flame ^1 ^0.8 ^-0.7 0 0 0 0.03 10 force
    particle flame ^1 ^0.8 ^-1.7 0 0 0 0.03 10 force
    particle smoke ^1 ^0.8 ^-1.7 0.4 0.2 0.4 0.03 50 force
    particle smoke ^1 ^0.8 ^0.3 0.4 0.2 0.4 0.03 50 force

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
