#> asset:object/1016.starry_lake/tick/wave/2
#
# 波の演出と処理2
#
# @within function asset:object/1016.starry_lake/tick/

# ドーナツ状の当たり判定にentityがいた場合Tagを付与
    tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..0.5] add Target

# 円 2
particle dust 0.2 0.2 0.25 4 ^0 ^ ^-0.5 0 0 0 0 1
particle dust 0.2 0.2 0.25 4 ^0.35355 ^ ^-0.35355 0 0 0 0 1
particle dust 0.2 0.2 0.25 4 ^0.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.25 4 ^0.35355 ^ ^0.35355 0 0 0 0 1
particle dust 0.2 0.2 0.25 4 ^0 ^ ^0.5 0 0 0 0 1
particle dust 0.2 0.2 0.25 4 ^-0.35355 ^ ^0.35355 0 0 0 0 1
particle dust 0.2 0.2 0.25 4 ^-0.5 ^ ^0 0 0 0 0 1
particle dust 0.2 0.2 0.25 4 ^-0.35355 ^ ^-0.35355 0 0 0 0 1
