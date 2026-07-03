#> asset:mob/0393.labyria_first/ai/animation/2_0_sw_move_start/move/loop
#
# 移動のループ処理
#
# @within function
#   asset:mob/0393.labyria_first/ai/animation/2_0_sw_move_start/end
#   asset:mob/0393.labyria_first/ai/animation/2_0_sw_move_start/move/loop

# スコア追加
    scoreboard players add $AX.Temp Temporary 1

# プレイヤーの位置に配置
    execute as @r[tag=!PlayerShouldInvulnerable,distance=..100] at @s run tp 0-0-0-0-0 ~ ~ ~ ~ ~

# 高さを調整
    data modify entity 0-0-0-0-0 Pos[1] set from entity @e[type=marker,tag=AX.Marker.SummonPoint,distance=..100,sort=nearest,limit=1] Pos[1]

# 拡散する
    data modify storage lib: Argument.Bounds set value [[3d,3d],[0,0],[3d,3d]]
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/

# そこがブロックで埋まってないか否かでループさせる
    execute at 0-0-0-0-0 if block ~ ~ ~ #lib:no_collision/ if score $AX.Temp Temporary matches ..4 run function asset:mob/0393.labyria_first/ai/animation/2_0_sw_move_start/move/loop
