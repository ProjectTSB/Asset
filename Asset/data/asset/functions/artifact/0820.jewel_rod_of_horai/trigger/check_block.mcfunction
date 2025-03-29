#> asset:artifact/0820.jewel_rod_of_horai/trigger/check_block
#
# 
#
# @within function asset:artifact/0820.jewel_rod_of_horai/trigger/3.3.2.set_target

#> loop
# @within
#   function asset:artifact/0820.jewel_rod_of_horai/trigger/check_block
#   function asset:artifact/0820.jewel_rod_of_horai/trigger/check_block_recursive
    #declare score_holder $MS.BlockDetect Temporary
    #declare score_holder $MS.LoopEnd Temporary
    #declare score_holder $MS.LoopNum Temporary


# 対象がもういるなら終了
    execute if entity @e[type=#lib:living,tag=MS.Target,distance=..12] run return 0

# チェック方向とチェック結果初期化
    scoreboard players set $MS.BlockDetect Temporary 0
    scoreboard players set $MS.LoopEnd Temporary 0
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0 ~ ~

# まだ対象が見つかってないならチェック
    function asset:artifact/0820.jewel_rod_of_horai/trigger/check_block_recursive

# 対象適格の敵に印をつける
    execute if score $MS.BlockDetect Temporary matches 0 run tag @s add MS.Target

# reset
    scoreboard players reset $MS.BlockDetect Temporary
    scoreboard players reset $MS.LoopEnd Temporary
    scoreboard players reset $MS.LoopNum Temporary
