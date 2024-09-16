#> asset:artifact/0987.ghost_step/trigger/5.bullet
#
#
#
# @within function asset:artifact/0987.ghost_step/trigger/4.schedule
#> Private
# @private
    #declare score_holder $isBanTPArea
    #declare tag RF.Landing

# 演出
    particle minecraft:dust 1.000 0.000 0.867 1 ~ ~ ~ 0.1 0.1 0.1 0 4 force
    execute if predicate lib:random_pass_per/30 run particle minecraft:soul ~ ~ ~ 0.1 0.1 0.1 0 1 force

# 進ませる
    tp @s ^ ^ ^0.1 ~ ~

# TPBANエリアにいった場合
    execute at @s store result score $isBanTPArea Temporary if predicate lib:is_ban_tp_area
    execute if score $isBanTPArea Temporary matches 1 at @s run particle smoke ~ ~ ~ 0 0 0 0.1 30
    execute if score $isBanTPArea Temporary matches 1 run kill @s
    scoreboard players reset $isBanTPArea Temporary