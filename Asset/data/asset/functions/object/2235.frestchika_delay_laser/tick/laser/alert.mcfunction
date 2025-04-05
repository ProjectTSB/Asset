#> asset:object/2235.frestchika_delay_laser/tick/laser/alert
#
# 警告
#
# @within function
#   asset:object/2235.frestchika_delay_laser/tick/
#   asset:object/2235.frestchika_delay_laser/tick/laser/alert

# パーティクル
    particle dust 0.5 0.5 0.5 0.5 ^ ^ ^ 0 0 0 0 1 force @a[distance=..32]

# 壁がなかったら再帰
    execute if entity @s[distance=..32] positioned ^ ^ ^1 if block ~ ~ ~ #asset:mob/0365.frestchika/no_collision run function asset:object/2235.frestchika_delay_laser/tick/laser/alert
