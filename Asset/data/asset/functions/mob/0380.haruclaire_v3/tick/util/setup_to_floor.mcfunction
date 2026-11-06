#> asset:mob/0380.haruclaire_v3/tick/util/setup_to_floor
#
# 汎用処理 接地
#
# @within asset:mob/0380.haruclaire_v3/tick/event/**
# @within asset:object/2151.haruclaire_icewall_center/tick/

# 地中の場合、上に移動
    execute unless block ~ ~ ~ #lib:no_collision/ run return run function asset:mob/0380.haruclaire_v3/tick/util/move_to_roof

# 空中の場合、下に移動
    execute if block ~ ~ ~ #lib:no_collision/ run return run function asset:mob/0380.haruclaire_v3/tick/util/move_to_ground
