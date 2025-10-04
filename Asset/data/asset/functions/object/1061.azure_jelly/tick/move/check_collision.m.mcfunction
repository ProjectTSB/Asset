#> asset:object/1061.azure_jelly/tick/move/check_collision.m
#
#
#
# @within function asset:object/1061.azure_jelly/tick/move/

# 前方が問題ないか判定
    $execute positioned ^ ^ ^$(Speed) if block ~ ~ ~ #lib:no_collision if block ~ ~1 ~ #lib:no_collision run data modify storage asset:temp 1061.Success set value true

# 前方が問題ないならそのままtp、そうでないなら移動先と現在位置を比較して色々する
    $execute if data storage asset:temp 1061{Success:true} run tp @s ^ ^ ^$(Speed)
    $execute unless data storage asset:temp 1061{Success:true} run function asset:object/1061.azure_jelly/tick/move/collision/calc_pos.m {Speed:$(Speed)}

# リセット
    data remove storage asset:temp 1061
