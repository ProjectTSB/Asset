#> asset:artifact/1681.pre_cise/trigger/bullet
#
# 0.5mずつ進む再帰する弾 壁と最初に当たった敵で止まる
#
# @input as big_precise at 弾の現在位置
# @within function
#   asset:artifact/1681.pre_cise/trigger/fire
#   asset:artifact/1681.pre_cise/trigger/bullet

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run tag @s add PreCise.Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision/ run tag @s add PreCise.Landing

# 演出
    particle dust 0.3 0.9 1 0.6 ~ ~ ~ 0 0 0 0 1

# 着弾
    execute if entity @s[tag=PreCise.Landing] positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,limit=1] at @s run function asset:artifact/1681.pre_cise/trigger/damage

# 再帰
    execute positioned ^ ^ ^0.5 if entity @s[tag=!PreCise.Landing,distance=..20] run function asset:artifact/1681.pre_cise/trigger/bullet
