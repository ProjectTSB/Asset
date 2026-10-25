#> asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/warp/loop
#
# ワープ処理
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/warp/
#   asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/warp/loop

# 再拡散時用にリセット
    scoreboard players reset $AX.Temp Temporary

# 再拡散用スコアを上昇
    scoreboard players add $AX.Loop Temporary 1

# マーカーを用意する
    tp 0-0-0-0-0 ~ ~ ~ ~ ~

# プレイヤーの位置に配置
    execute as @p[tag=!PlayerShouldInvulnerable,distance=..100] at @s run tp 0-0-0-0-0 ~ ~ ~ ~ ~

# 高さを調整
    data modify entity 0-0-0-0-0 Pos[1] set from entity @e[type=marker,tag=AX.Marker.SummonPoint,distance=..100,sort=nearest,limit=1] Pos[1]

# 拡散する
    data modify storage lib: Argument.Bounds set value [[6d,6d],[0,0],[6d,6d]]
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/

# 地面で埋まっていた場合、再拡散する
    execute at 0-0-0-0-0 unless block ~ ~ ~ #lib:no_collision/ run scoreboard players set $AX.Temp Temporary 1

# 条件を満たしていればワープする
    execute unless score $AX.Temp Temporary matches 1 at 0-0-0-0-0 run tp @s ~ ~ ~ ~ ~

# マーカーを戻してあげる
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# 満たしていなければ再拡散
    execute if score $AX.Temp Temporary matches 1 if score $AX.Loop Temporary matches ..10 run function asset:mob/0393.labyria_first/ai/animation/3_0_ms_warp/warp/loop
