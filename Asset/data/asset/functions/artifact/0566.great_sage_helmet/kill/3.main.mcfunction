#> asset:artifact/0566.great_sage_helmet/kill/3.main
#
#
#
# @within function asset:artifact/0566.great_sage_helmet/kill/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 周囲に敵モブがいる場合、4%の確率で話してくる
    execute if entity @e[tag=Enemy,tag=!Uninterferable,distance=..35] if predicate lib:random_pass_per/4 run function asset:artifact/0566.great_sage_helmet/kill/talk

# 周囲に敵モブがいなくなった場合、10%の確率で話してくる
    execute unless entity @e[tag=Enemy,tag=!Uninterferable,distance=..35] if predicate lib:random_pass_per/10 run function asset:artifact/0566.great_sage_helmet/kill/talk_genocide
