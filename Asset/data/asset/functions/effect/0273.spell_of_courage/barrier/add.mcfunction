#> asset:effect/0273.spell_of_courage/barrier/add
#
# バリアを付与する
#
# @within function asset:effect/0273.spell_of_courage/given/

# バリア設定
    data modify storage api: Argument.Amount set value 10
    data modify storage api: Argument.UUID set value [I;1,3,273,0]
    data modify storage api: Argument.Priority set value 1
    data modify storage api: Argument.WipedCallback set value "asset:effect/0273.spell_of_courage/barrier/break"
    function api:entity/player/absorption/add
