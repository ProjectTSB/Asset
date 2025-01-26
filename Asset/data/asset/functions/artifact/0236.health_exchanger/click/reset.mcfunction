#> asset:artifact/0236.health_exchanger/click/reset
#
# 神器のリセット処理
#
# @within function asset:artifact/alias/236/click/reset

# リセット //3.mainでも使用するため最後に
    scoreboard players reset @a Temporary
    scoreboard players reset $SCUserHealth Temporary
    scoreboard players reset $MaxHealth Temporary
    tag @a[tag=HasMaxHealth] remove HasMaxHealth
    tag @a[tag=HasMaxHealthTarget] remove HasMaxHealthTarget
