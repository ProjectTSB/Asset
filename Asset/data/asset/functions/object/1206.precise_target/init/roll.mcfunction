#> asset:object/1206.precise_target/init/roll
#
# 通常の的の局所オフセットを抽選して向きと位置を置き、同じ所有者の他の的と0.05m以内に近すぎれば抽選し直す
# 試行回数の上限に達したら、その位置のまま終える
#
# @input
#   as 的 at 的
#   tag PreCise.Placing : 抽選中の的 (他の的との比較から除く)
#   tag PreCise.Owner : 所有者 (16m以内)
#   score $Attempts Temporary : 残りの試行回数
#   storage asset:context this : 的のField
# @within function
#   asset:object/1206.precise_target/init/place
#   asset:object/1206.precise_target/init/roll

# 局所オフセットを抽選する (1000倍の整数 狙う敵の方向に垂直な面での距離1あたりのずれ)
# 左右は-0.115から0.115 (約±6.6度) 上下は-0.230から0.058 (下は約13度、上は約3.3度)
    execute store result score $X Temporary run random value -115..115
    execute store result score $Y Temporary run random value -230..58

# 局所オフセットを小数 (3桁) にしてFieldへ保存する
    execute store result storage asset:context this.X double 0.001 run scoreboard players get $X Temporary
    execute store result storage asset:context this.Y double 0.001 run scoreboard players get $Y Temporary
    scoreboard players reset $X Temporary
    scoreboard players reset $Y Temporary

# 向きを決めて、所有者の目から1m先へ置く (補正なしの位置で比較するため、leadは使わない)
    function asset:object/1206.precise_target/direction/aim.m with storage asset:context this
    function asset:object/1206.precise_target/move/follow

# 同じ所有者の他の的が0.05m以内にあるか調べる
    scoreboard players set $Close Temporary 0
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute at @s as @e[type=item_display,tag=PreCise.Target,tag=!PreCise.Placing,distance=..0.05] if score @s UserID = $UserID Temporary run scoreboard players set $Close Temporary 1
    scoreboard players reset $UserID Temporary

# 近すぎれば、試行回数が残っている間は抽選し直す
    scoreboard players remove $Attempts Temporary 1
    execute if score $Close Temporary matches 1 if score $Attempts Temporary matches 1.. at @s run function asset:object/1206.precise_target/init/roll

# リセット
    scoreboard players reset $Close Temporary
