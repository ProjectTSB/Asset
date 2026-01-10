#> asset:effect/0320.fatalerror_charge/end/charge_shot/loop
#
#
#
# @within function
#    asset:effect/0320.fatalerror_charge/end/charge_shot/shot
#    asset:effect/0320.fatalerror_charge/end/charge_shot/loop

# 演出
    particle dust 0.824 0.918 0.98 0.7 ^ ^ ^ 0.1 0.1 0.1 0 10
    particle dust 0.824 0.918 1 0.4 ^ ^ ^ 0.4 0.4 0.4 0 10

# ヒットしたら対象に着弾検知Tagを付与
    execute positioned ~-0.75 ~-0.75 ~-0.75 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0.5,dy=0.5,dz=0.5] run tag @s add Target
# 距離が来るor壁が来た場合、着弾タグをつける
    execute unless block ^ ^ ^0.6 #lib:no_collision run tag @s add Landing
    execute unless entity @s[distance=..15] run tag @s add Landing

# ダメージを与える
    execute if entity @s[tag=Landing] run function asset:effect/0320.fatalerror_charge/end/charge_shot/landing

# 再帰
    execute if entity @s[tag=!Landing] positioned ^ ^ ^0.6 if block ^ ^ ^ #lib:no_collision run function asset:effect/0320.fatalerror_charge/end/charge_shot/loop
