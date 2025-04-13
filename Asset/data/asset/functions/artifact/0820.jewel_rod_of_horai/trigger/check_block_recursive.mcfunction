#> asset:artifact/0820.jewel_rod_of_horai/trigger/check_block_recursive
#
# 
#
# @within
#   function asset:artifact/0820.jewel_rod_of_horai/trigger/check_block
#   function asset:artifact/0820.jewel_rod_of_horai/trigger/check_block_recursive

# ブロックに当たってたらフラグ立てる
    execute unless block ~ ~ ~ #lib:no_collision run scoreboard players set $MS.BlockDetect Temporary 1

# チェック位置が発動者まで達したらループ終了
    execute as @p[tag=this] facing entity @s eyes positioned as @s positioned ^ ^ ^3 rotated as 0-0-0-0-0 positioned ^ ^ ^-4 unless entity @s[distance=..5] run scoreboard players set $MS.LoopEnd Temporary 1

# ループ回数が規定に達したら終了（もしもの時の安全装置
    scoreboard players add $MS.LoopNum Temporary 1
    execute if score $MS.LoopNum Temporary matches 51.. run scoreboard players set $MS.LoopEnd Temporary 1

# 再帰
    execute if score $MS.LoopEnd Temporary matches 0 if score $MS.BlockDetect Temporary matches 0 positioned ^ ^ ^0.25 run function asset:artifact/0820.jewel_rod_of_horai/trigger/check_block_recursive
