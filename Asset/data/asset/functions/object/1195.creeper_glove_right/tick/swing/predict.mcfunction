#> asset:object/1195.creeper_glove_right/tick/swing/predict
#
# 所有者の1tickの移動量を見た目の先読み補正として円弧の位置に足す
#
# @within function
#   asset:object/1195.creeper_glove_right/tick/swing/idle
#   asset:object/1195.creeper_glove_right/tick/swing/cooldown

# 所有者の移動量を取得する
    execute as @p[tag=1195.Owner,distance=..64] run function api:player_vector/get

# 0.001刻みにして渡す
    execute store result storage asset:temp 1195.Arc.DX double 0.001 run data get storage api: Return.Vector[0] 1000
    execute store result storage asset:temp 1195.Arc.DY double 0.001 run data get storage api: Return.Vector[1] 1000
    execute store result storage asset:temp 1195.Arc.DZ double 0.001 run data get storage api: Return.Vector[2] 1000

# リセット
    data remove storage api: Return.Vector
