#> asset:object/1207.big_precise/move/lead
#
# 実行者を、所有者の1tickの移動量だけ現在位置から進める
# 移動中の所有者に見た目の位置が遅れるのを補う (命中判定には使わない)
#
# @input
#   as big_precise at big_preciseの位置
#   tag PreCise.Owner : 所有者 (16m以内)
# @within function asset:object/1207.big_precise/tick/

# 所有者の1tickの移動量を取得して、1000倍の整数にしてから小数3桁にしてmacroの引数にする (最小の絶対値が0.001なので指数表記にならない)
    execute as @p[tag=PreCise.Owner,distance=..16] run function api:player_vector/get
    execute store result storage asset:temp PreCise.Lead.X double 0.001 run data get storage api: Return.Vector[0] 1000
    execute store result storage asset:temp PreCise.Lead.Y double 0.001 run data get storage api: Return.Vector[1] 1000
    execute store result storage asset:temp PreCise.Lead.Z double 0.001 run data get storage api: Return.Vector[2] 1000

# 移動量だけ現在位置から進める
    function asset:object/1207.big_precise/move/lead.m with storage asset:temp PreCise.Lead

# リセット
    data remove storage asset:temp PreCise.Lead
