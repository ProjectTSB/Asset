#> asset:artifact/1068.dream_of_burning_butterfly/damage_entity/reset
#
# 神器のリセット処理
#
# @within function asset:artifact/alias/1068/damage_entity/reset

# リセット
    scoreboard players reset $MaxHealth Temporary
    scoreboard players reset $Health Temporary
    scoreboard players reset $LostHealth Temporary
