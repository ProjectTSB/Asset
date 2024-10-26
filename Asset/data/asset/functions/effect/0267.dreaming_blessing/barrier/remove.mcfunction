#> asset:effect/0267.dreaming_blessing/barrier/remove
#
# バリアを削除する
#
# @within function
#   asset:effect/0267.dreaming_blessing/end/
#   asset:effect/0267.dreaming_blessing/re-given/
#   asset:effect/0267.dreaming_blessing/remove/

# バリアを削除する
    data modify storage api: Argument.UUID set value [I;1,3,267,0]
    function api:entity/player/absorption/remove
