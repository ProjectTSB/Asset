#> asset:effect/0273.spell_of_courage/barrier/remove
#
# バリアを削除する
#
# @within function
#   asset:effect/0273.spell_of_courage/end/
#   asset:effect/0273.spell_of_courage/remove/

# バリア設定
    data modify storage api: Argument.UUID set value [I;1,3,273,0]
    function api:entity/player/absorption/remove
