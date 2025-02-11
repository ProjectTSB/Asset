#> asset:artifact/0844.closed_eyes_of_love/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/844/tick/check

# 範囲内に敵がいるか確認
    execute positioned ~-1 ~2 ~-1 unless entity @e[type=#lib:living,tag=Enemy,dx=1,dy=1,dz=1] run tag @s remove CanUsed
