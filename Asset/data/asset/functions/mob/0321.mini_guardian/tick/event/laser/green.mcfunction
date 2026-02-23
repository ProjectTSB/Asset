#> asset:mob/0321.mini_guardian/tick/event/laser/green
#
#
#
# @within function
#   asset:mob/0321.mini_guardian/tick/event/laser/
#   asset:mob/0321.mini_guardian/tick/event/laser/green

# パーティクル
    particle dust 0 1 0 0.5 ^ ^ ^ 0 0 0 0 1 force @a[distance=..30]
    particle dust 0 1 0 0.5 ^ ^ ^0.5 0 0 0 0 1 force @a[distance=..30]
    particle dust 0 1 0 0.5 ^ ^ ^-0.5 0 0 0 0 1 force @a[distance=..30]
    particle dust 0 1 0 0.5 ^ ^ ^0.25 0 0 0 0 1 force @a[distance=..30]
    particle dust 0 1 0 0.5 ^ ^ ^-0.25 0 0 0 0 1 force @a[distance=..30]

# 実行時間を移す
    scoreboard players operation $DamageInterval Temporary = @s 8X.Tick

# 数Tickごとにダメージ
    scoreboard players operation $DamageInterval Temporary %= $5 Const
    execute if score $DamageInterval Temporary matches 0 positioned ~-0.5 ~-0.5 ~-0.5 as @p[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0321.mini_guardian/tick/event/laser/damage
    scoreboard players reset $DamageInterval Temporary

# 壁がなかったり、プレイヤーにあたったりしなければ再帰
    execute if entity @s[distance=..15] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @p[gamemode=!spectator,dx=0] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 if block ~ ~ ~ #lib:no_collision/ run function asset:mob/0321.mini_guardian/tick/event/laser/green
