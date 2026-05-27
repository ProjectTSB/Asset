#> asset:artifact/1207.quadrainbow_icequality/trigger/select_target
#
# 
#
# @within function asset:artifact/1207.quadrainbow_icequality/trigger/3.main

# 左右30度以内にいる1番近い敵を最初に探索
execute unless entity @e[type=#lib:living,tag=XJ.Target,distance=..5,sort=nearest] as @e[type=#lib:living,tag=Enemy,distance=..5] run function asset:artifact/1207.quadrainbow_icequality/trigger/search_30deg

# いなかったら90度以内まで範囲拡大して再探索
execute unless entity @e[type=#lib:living,tag=XJ.Target,distance=..5,sort=nearest] as @e[type=#lib:living,tag=Enemy,distance=..5] run function asset:artifact/1207.quadrainbow_icequality/trigger/search_90deg
