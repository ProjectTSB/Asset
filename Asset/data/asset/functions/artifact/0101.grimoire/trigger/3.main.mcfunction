#> asset:artifact/0101.grimoire/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0101.grimoire/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く
    execute store result storage asset:temp type int 1 run random value 0..2


    execute if data storage asset:temp {type:0} at @s anchored eyes run function asset:artifact/0101.grimoire/trigger/balletfire
    execute if data storage asset:temp {type:1} at @s anchored eyes run function asset:artifact/0101.grimoire/trigger/balletwater
    execute if data storage asset:temp {type:2} at @s anchored eyes run function asset:artifact/0101.grimoire/trigger/balletthunder
    data remove storage asset:temp type
