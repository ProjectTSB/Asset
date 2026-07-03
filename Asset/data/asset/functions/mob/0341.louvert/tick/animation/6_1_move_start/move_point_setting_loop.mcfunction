#> asset:mob/0341.louvert/tick/animation/6_1_move_start/move_point_setting_loop
#
# 移動先を指定（ループ処理）
#
# @within function
#   asset:mob/0341.louvert/tick/animation/6_1_move_start/move_point_setting
#   asset:mob/0341.louvert/tick/animation/6_1_move_start/move_point_setting_loop

# スコア減少
    scoreboard players remove $9H.Temp Temporary 1
# 近くのプレイヤーのところに飛ばす
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..100,sort=nearest,limit=1] at @s anchored eyes run tp 0-0-0-0-0 ^ ^ ^ ~ ~
# 拡散値
    data modify storage lib: Argument.Bounds set value [[4d,4d],[1d,0d],[4d,4d]]
# 拡散する
    execute as 0-0-0-0-0 at @s run function lib:spread_entity/
# 空気ならOK
    execute as 0-0-0-0-0 at @s unless block ~ ~ ~ #lib:no_collision/ run scoreboard players set $9H.Temp Temporary 0
# ループ処理
    execute if score $9H.Temp Temporary matches 1.. run function asset:mob/0341.louvert/tick/animation/6_1_move_start/move_point_setting_loop
