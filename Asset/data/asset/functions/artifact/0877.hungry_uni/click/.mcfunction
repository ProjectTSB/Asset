#> asset:artifact/0877.hungry_uni/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/877/click/

    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 食べる演出
    execute anchored eyes run particle item kelp ^ ^ ^0.2 0 0 0 0.05 10
    playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1 0.6
# コンブへらす
    clear @s kelp 8
# 残り回数が1回の時発動した場合
    execute unless data storage asset:context Items.mainhand.id run data modify storage api: Argument.ID set value 876
    execute unless data storage asset:context Items.mainhand.id run function api:artifact/give/from_id
