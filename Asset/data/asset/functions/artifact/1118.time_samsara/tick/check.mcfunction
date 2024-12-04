#> asset:artifact/1118.time_samsara/tick/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1118/tick/check

# 発動範囲内に敵がいない時は発動しない。これはプレイヤーが意識する必要がないため発動条件として書かない。
    execute unless entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..20] run tag @s remove CanUsed
