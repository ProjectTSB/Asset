#> asset:artifact/1176.b_l_e_s_s/trigger/block_check_recursive
#
#
#
# @within
#   function asset:artifact/1176.b_l_e_s_s/trigger/block_check
#   function asset:artifact/1176.b_l_e_s_s/trigger/block_check_recursive

# ブロックに当たってたらフラグ立てる
execute unless block ~ ~ ~ #lib:no_collision/ run scoreboard players set $WO.BlockDetect Temporary 1
    #execute unless block ~ ~ ~ #lib:no_collision/ run say collision
    #execute unless block ~ ~ ~ #lib:no_collision/ run tellraw @p [{"score": {"name": "$WO.LoopNum","objective": "Temporary"}}]

# チェック位置が発動者まで達したらループ終了
execute as @p[tag=this] facing entity @s eyes positioned as @s positioned ^ ^ ^3 rotated as 0-0-0-0-0 positioned ^ ^ ^-4 unless entity @s[distance=..5] run scoreboard players set $WO.LoopEnd Temporary 1
    #execute as @p[tag=this] facing entity @s eyes positioned as @s positioned ^ ^ ^3 rotated as 0-0-0-0-0 positioned ^ ^ ^-4 unless entity @s[distance=..5] run say player over
    #execute as @p[tag=this] facing entity @s eyes positioned as @s positioned ^ ^ ^3 rotated as 0-0-0-0-0 positioned ^ ^ ^-4 unless entity @s[distance=..5] run tellraw @p [{"score": {"name": "$WO.LoopNum","objective": "Temporary"}}]

# ループ回数が規定に達したら終了（もしもの時の安全装置
scoreboard players add $WO.LoopNum Temporary 1
execute if score $WO.LoopNum Temporary matches 201.. run scoreboard players set $WO.LoopEnd Temporary 1
    #execute if score $WO.LoopNum Temporary matches 201.. run say loop over

# 再帰
execute if score $WO.LoopEnd Temporary matches 0 if score $WO.BlockDetect Temporary matches 0 positioned ^ ^ ^0.25 run function asset:artifact/1176.b_l_e_s_s/trigger/block_check_recursive
