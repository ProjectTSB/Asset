#> asset:artifact/1681.pre_cise/shared/summon_target
#
# 実行者の視線に垂直な面上でランダムにずらした方角を持つ的を1つ召喚する
#
# @input
#   as player
#   score $XMin Temporary : 左右のずれの下限 (1000倍) 視線の左右45度の端が-1000と1000
#   score $XSpan Temporary : 左右のずれの幅 (1000倍) 全範囲なら下限-1000と幅2000
#   score $Chest Temporary? : 1ならチェスト、0なら通常の見た目 (未設定なら神器IDから決める)
# @within function
#   asset:artifact/1681.pre_cise/shared/summon_targets
#   asset:artifact/1681.pre_cise/shared/on_hit

# 左右のずれを下限から幅の範囲で選び、上下のずれを-1から1の範囲で選ぶ (1000倍の整数)
    execute store result score $X Temporary run random value 0..9999
    scoreboard players operation $X Temporary *= $XSpan Temporary
    scoreboard players operation $X Temporary /= $10000 Const
    scoreboard players operation $X Temporary += $XMin Temporary
    execute store result score $Y Temporary run random value -1000..1000

# ずれをmacroへ渡す小数 (3桁) にする
    execute store result storage asset:temp PreCise.X double 0.001 run scoreboard players get $X Temporary
    execute store result storage asset:temp PreCise.Y double 0.001 run scoreboard players get $Y Temporary

# 見た目を決める (リロード状態の神器ならチェスト)
    execute unless score $Chest Temporary matches 0..1 store success score $Chest Temporary if data storage asset:context id{mainhand:1682}
    execute store result storage api: Argument.FieldOverride.Chest int 1 run scoreboard players get $Chest Temporary

# 向きを求めるmarkerを召喚し、視線から左右・上下にずらした方向を向かせる
    summon marker ~ ~ ~ {Tags:["PreCise.Rotation"]}
    function asset:artifact/1681.pre_cise/shared/set_rotation.m with storage asset:temp PreCise

# markerの向きを的の方角にして的を召喚する
    data modify storage api: Argument.FieldOverride.Yaw set from entity @e[type=marker,tag=PreCise.Rotation,distance=..1,limit=1] Rotation[0]
    data modify storage api: Argument.FieldOverride.Pitch set from entity @e[type=marker,tag=PreCise.Rotation,distance=..1,limit=1] Rotation[1]
    kill @e[type=marker,tag=PreCise.Rotation,distance=..1]
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.ID set value 1206
    function api:object/summon

# リセット
    data remove storage asset:temp PreCise
    scoreboard players reset $X Temporary
    scoreboard players reset $Y Temporary
