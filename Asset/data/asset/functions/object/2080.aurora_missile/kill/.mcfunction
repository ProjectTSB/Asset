#> asset:object/2080.aurora_missile/kill/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/2080/kill

# 実行済みならreturn
    execute if entity @s[tag=2080.AlreadyHit] run return 0

# Tagを付与
    tag @s add 2080.AlreadyHit

# プレイヤーが近くにいるかいないかで実行位置を変更する
    execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @p[gamemode=!spectator,dx=0] at @s run function asset:object/2080.aurora_missile/kill/main
    execute positioned ~-0.5 ~-0.5 ~-0.5 at @a[gamemode=!spectator,dx=0,sort=random,limit=1] run function asset:object/2080.aurora_missile/kill/main

# 消滅
    kill @s
