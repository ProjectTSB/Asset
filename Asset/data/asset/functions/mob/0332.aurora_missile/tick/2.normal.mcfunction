#> asset:mob/0332.aurora_missile/tick/2.normal
#
# ノーマル以下のtick処理
#
# @within function asset:mob/0332.aurora_missile/tick/1

# 演出
    execute if entity @s[scores={98.Tick=..19}] run particle dust_color_transition 0 0.408 0.361 1 0 0.114 0.478 ~ ~ ~ 0 0 0 0 3 normal @a
    execute if entity @s[scores={98.Tick=20..}] run particle dust_color_transition 0.000 1.000 0.886 2 0 0.235 1 ~ ~ ~ 0.2 0.2 0.2 0 3 normal @a

# 一定間隔でplaysound
    scoreboard players operation $Temp Temporary = @s 98.Tick
    scoreboard players operation $Temp Temporary %= $4 Const
    execute if score $Temp Temporary matches 0 run playsound block.beacon.power_select hostile @a ~ ~ ~ 0.4 2 0
    scoreboard players reset $Temp Temporary

# 最初の20tickは誘導弾になる
    execute if entity @s[scores={98.Tick=..20}] facing entity @p feet positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s feet positioned as @s run tp @s ^ ^ ^0.35 ~ ~

# それ以降は前進する
    execute if entity @s[scores={98.Tick=21..}] run tp @s ^ ^ ^0.5

# 誘導状態でヒットした場合消滅
    execute if entity @s[scores={98.Tick=..19}] unless block ^ ^ ^0.5 #lib:no_collision run kill @s
    execute if entity @s[scores={98.Tick=..19}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!spectator,dx=0] run kill @s

# 直進状態でブロックかプレイヤーにヒットで爆発する
    execute if entity @s[scores={98.Tick=20..}] unless block ^ ^ ^0.5 #lib:no_collision run function asset:mob/0332.aurora_missile/tick/4.hit
    execute if entity @s[scores={98.Tick=20..}] positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[gamemode=!spectator,dx=0] run function asset:mob/0332.aurora_missile/tick/4.hit

# 消滅
    execute if entity @s[scores={98.Tick=50..}] run kill @s
