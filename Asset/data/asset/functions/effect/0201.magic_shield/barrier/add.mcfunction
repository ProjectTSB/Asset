#> asset:effect/0201.magic_shield/barrier/add
#
# バリアを付与する
#
# @within function
#   asset:effect/0201.magic_shield/given/
#   asset:effect/0201.magic_shield/re-given/

# 本体バリア
    data modify storage api: Argument.Amount set value 19.9
    data modify storage api: Argument.UUID set value [I;1,3,201,0]
    data modify storage api: Argument.Priority set value 1
    data modify storage api: Argument.WipedCallback set value ""
    function api:entity/player/absorption/add

# 被ダメ判定検知用バリア
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.UUID set value [I;1,3,201,1]
    data modify storage api: Argument.Priority set value 10
    data modify storage api: Argument.WipedCallback set value "asset:effect/0201.magic_shield/barrier/break"
    function api:entity/player/absorption/add
