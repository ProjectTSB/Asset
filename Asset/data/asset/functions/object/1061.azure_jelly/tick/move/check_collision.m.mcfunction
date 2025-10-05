#> asset:object/1061.azure_jelly/tick/move/check_collision.m
#
#
#
# @within function asset:object/1061.azure_jelly/tick/move/

# 前方が問題ないか判定
    $execute positioned ^ ^ ^$(Speed) if function asset:object/1061.azure_jelly/predicate/collision run data modify storage asset:temp 1061.Success set value true

# 前方が問題ないならそのままtp
    $execute if data storage asset:temp 1061{Success:true} run tp @s ^ ^ ^$(Speed)

# そうでないならSpeedの半分を引数として色々する
    $execute unless data storage asset:temp 1061{Success:true} run data modify storage asset:temp 1061.Speed set value $(Speed)
    execute unless data storage asset:temp 1061{Success:true} store result storage asset:temp 1061.Speed float 0.005 run data get storage asset:temp 1061.Speed 100
    execute unless data storage asset:temp 1061{Success:true} run function asset:object/1061.azure_jelly/tick/move/with_collision with storage asset:temp 1061

# リセット
    data remove storage asset:temp 1061
