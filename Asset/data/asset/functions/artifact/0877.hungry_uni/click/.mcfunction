#> asset:artifact/0877.hungry_uni/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/877/click/

#> Private
# @private
    #declare score_holder $UseCount

# 食べる演出
    execute anchored eyes run particle item kelp ^ ^ ^0.2 0 0 0 0.05 10
    playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1 0.6
# コンブへらす
    clear @s kelp 8
# 残り回数が1回の時発動した場合
    execute if data storage asset:context {BrokeItem: true} run data modify storage api: Argument.ID set value 876
    execute if data storage asset:context {BrokeItem: true} run function api:artifact/give/from_id
