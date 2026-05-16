#> asset:effect/0320.fatalerror_charge/end/shot/loop
#
#
#
# @within function
#    asset:effect/0320.fatalerror_charge/end/shot/shot
#    asset:effect/0320.fatalerror_charge/end/shot/loop

# 演出
    particle dust 0.824 0.918 0.98 0.3 ^ ^ ^ 0 0 0 0 10

# ヒットしたら自身と対象に着弾検知Tagを付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] run tag @s add Landing
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] add Target

# ダメージを与える
    execute if entity @s[tag=Landing] run function asset:effect/0320.fatalerror_charge/end/shot/landing

# 再帰
    execute if entity @s[tag=!Landing] positioned ^ ^ ^0.6 if entity @s[distance=..15] if block ^ ^ ^ #lib:no_collision/ run function asset:effect/0320.fatalerror_charge/end/shot/loop
