#> asset:artifact/1681.pre_cise/shared/on_hit
#
# 命中した的を1つ消し、新しい的を1つ召喚する
#
# @input as player
# @within function
#   asset:artifact/1681.pre_cise/trigger/3.main
#   asset:artifact/1682.pre_cise_empty/trigger/3.main

# 演出
    execute at @e[type=block_display,tag=PreCise.Hit,distance=..8,limit=1] run particle crit ~ ~ ~ 0.2 0.2 0.2 0.3 20
    playsound entity.experience_orb.pickup player @a[distance=..16] ~ ~ ~ 1 1.5

# 命中した的を1つ消す
    kill @e[type=block_display,tag=PreCise.Hit,distance=..8,limit=1]
    tag @e[type=block_display,tag=PreCise.Hit,distance=..8] remove PreCise.Hit

# 新しい的 (左右・上下とも全範囲から選ぶ)
    scoreboard players set $XMin Temporary -1000
    scoreboard players set $XSpan Temporary 2000
    function asset:artifact/1681.pre_cise/shared/summon_target

# リセット
    scoreboard players reset $XMin Temporary
    scoreboard players reset $XSpan Temporary
    scoreboard players reset $Chest Temporary
