#> asset:artifact/1078.pigeon_blood/trigger/resonance_attack/6.shot_recursive
#
# 射撃の再帰処理
#
# @within function
#   asset:artifact/1078.pigeon_blood/trigger/resonance_attack/5.shot
#   asset:artifact/1078.pigeon_blood/trigger/resonance_attack/6.shot_recursive

# 演出
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^ 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^0.2 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^0.4 0 0 0 0 1

# ヒットしたら自身と対象に着弾検知Tagを付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,dx=0,limit=1] run tag @s add Landing
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,dx=0,limit=1] run tag @e[type=#lib:living,tag=Enemy,dx=0,limit=1] add Target

# 再帰
    execute if entity @s[tag=!Landing] positioned ^ ^ ^0.6 if entity @s[distance=..15] if block ^ ^ ^ #lib:no_collision run function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/6.shot_recursive