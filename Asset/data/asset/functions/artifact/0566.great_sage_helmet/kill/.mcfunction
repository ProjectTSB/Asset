#> asset:artifact/0566.great_sage_helmet/kill/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/566/kill/

# 周囲に敵モブがいる場合、4%の確率で話してくる
    execute if entity @e[tag=Enemy,tag=!Uninterferable,distance=..35] if predicate lib:random_pass_per/4 run function asset:artifact/0566.great_sage_helmet/kill/talk

# 周囲に敵モブがいなくなった場合、10%の確率で話してくる
    execute unless entity @e[tag=Enemy,tag=!Uninterferable,distance=..35] if predicate lib:random_pass_per/10 run function asset:artifact/0566.great_sage_helmet/kill/talk_genocide
