#> asset:artifact/1176.b_l_e_s_s/trigger/block_check
#
#
#
# @within function asset:artifact/1176.b_l_e_s_s/trigger/select_target

# 対象がもういるなら終了
    # execute if entity @e[tag=A1176.Target] run say skip check
    execute if entity @e[type=#lib:living,tag=A1176.Target,distance=..50] run return 0

# チェック方向とチェック結果初期化
    scoreboard players set $A1176.BlockDetect Temporary 0
    scoreboard players set $A1176.LoopEnd Temporary 0
    execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0 ~ ~

# まだ対象が見つかってないならチェック
        # say start check
    function asset:artifact/1176.b_l_e_s_s/trigger/block_check_recursive
        # execute as @s run tellraw @p [{"score": {"name": "$A1176.BlockDetect","objective": "Temporary"}}]

# 対象適格の敵に印をつける
    execute if score $A1176.BlockDetect Temporary matches 0 run tag @s add A1176.Target

# reset
    scoreboard players reset $A1176.BlockDetect Temporary
    scoreboard players reset $A1176.LoopEnd Temporary
    scoreboard players reset $A1176.LoopNum Temporary
