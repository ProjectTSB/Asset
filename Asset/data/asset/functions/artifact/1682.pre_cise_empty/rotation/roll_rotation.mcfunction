#> asset:artifact/1682.pre_cise_empty/rotation/roll_rotation
#
# 実行者の視線に垂直な面上でランダムにずらした方角を求め、storageに保存する
#
# @input
#   as player at player
#   score $XMin Temporary : 左右のずれの下限 (1000倍) 視線の左右45度の端が-1000と1000
#   score $XSpan Temporary : 左右のずれの幅 (1000倍) 全範囲なら下限-1000と幅2000
# @output storage asset:temp PreCise.Rotation : 求めた方角 [Yaw, Pitch] (呼出側が消す)
# @within function asset:artifact/1682.pre_cise_empty/target/summon_reload_target

# 左右のずれを下限から幅の範囲で選び、上下のずれを視線の上下45度の範囲 (-1000から1000) で選ぶ (1000倍の整数)
    execute store result score $X Temporary run random value 0..9999
    scoreboard players operation $X Temporary *= $XSpan Temporary
    scoreboard players operation $X Temporary /= $10000 Const
    scoreboard players operation $X Temporary += $XMin Temporary
    execute store result score $Y Temporary run random value -1000..1000

# ずれをmacroへ渡す小数 (3桁) にする
    execute store result storage asset:temp PreCise.X double 0.001 run scoreboard players get $X Temporary
    execute store result storage asset:temp PreCise.Y double 0.001 run scoreboard players get $Y Temporary

# 向きを求めるmarkerを召喚し、視線から左右・上下にずらした方向を向かせて、その向きを保存する
    summon marker ~ ~ ~ {Tags:["PreCise.Rotation"]}
    function asset:artifact/1682.pre_cise_empty/rotation/set_rotation.m with storage asset:temp PreCise
    data modify storage asset:temp PreCise.Rotation set from entity @e[type=marker,tag=PreCise.Rotation,distance=..1,limit=1] Rotation
    kill @e[type=marker,tag=PreCise.Rotation,distance=..1]

# リセット
    data remove storage asset:temp PreCise.X
    data remove storage asset:temp PreCise.Y
    scoreboard players reset $X Temporary
    scoreboard players reset $Y Temporary
