#> asset:artifact/1079.allochromatic/click/6.shot_recursive
#
# 射撃の再帰処理
#
# @within function
#   asset:artifact/1079.allochromatic/click/5.shot
#   asset:artifact/1079.allochromatic/click/6.shot_recursive

# 演出
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^ 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^0.2 0 0 0 0 1
    particle dust 0.25 0.7 100000000 0.7 ^ ^ ^0.4 0 0 0 0 1

# ヒットしたら自身と対象に着弾検知Tagを付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] run tag @s add Landing
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] add Target

# ダメージを与える
    execute if entity @s[tag=Landing] run function asset:artifact/1079.allochromatic/click/7.damage

# 距離減衰のためのスコア
    scoreboard players add $Distance_Damping Temporary 1

# 再帰
    execute if entity @s[tag=!Landing] positioned ^ ^ ^0.6 if entity @s[distance=..15] if block ^ ^ ^ #lib:no_collision run function asset:artifact/1079.allochromatic/click/6.shot_recursive
