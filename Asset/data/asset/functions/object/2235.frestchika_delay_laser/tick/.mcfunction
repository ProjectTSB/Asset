#> asset:object/2235.frestchika_delay_laser/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/2235/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 予告
    execute if score @s General.Object.Tick matches ..35 run function asset:object/2235.frestchika_delay_laser/tick/laser/alert

# レーザー発射
    execute if score @s General.Object.Tick matches 40 run function asset:object/2235.frestchika_delay_laser/tick/laser/shoot

# パーティクル
    particle dust 0 0.75 1 1 ~ ~ ~ 0.2 0.2 0.2 1 1 force @a[distance=..30]

# 消滅処理
    kill @s[scores={General.Object.Tick=1000..}]
