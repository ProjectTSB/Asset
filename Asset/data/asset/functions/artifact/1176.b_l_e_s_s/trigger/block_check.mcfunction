#> asset:artifact/1176.b_l_e_s_s/trigger/block_check
#
# 
#
# @within function asset:artifact/1176.b_l_e_s_s/trigger/select_target

# 対象がもういるなら終了
    # execute if entity @e[tag=WO.Target] run say skip check
    execute if entity @e[type=#lib:living,tag=WO.Target,distance=..50] run return 0

# チェック方向とチェック結果初期化
    scoreboard players set $WO.BlockDetect Temporary 0
    scoreboard players set $WO.LoopEnd Temporary 0
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0 ~ ~

# まだ対象が見つかってないならチェック
        # say start check
    function asset:artifact/1176.b_l_e_s_s/trigger/block_check_recursive
        # execute as @s run tellraw @p [{"score": {"name": "$WO.BlockDetect","objective": "Temporary"}}]

# 対象適格の敵に印をつける
    execute if score $WO.BlockDetect Temporary matches 0 run tag @s add WO.Target

# reset
    scoreboard players reset $WO.BlockDetect Temporary
    scoreboard players reset $WO.LoopEnd Temporary
    scoreboard players reset $WO.LoopNum Temporary
