#> asset:artifact/1033.thelema_of_blue_sea/trigger/entity/persuit/main
#
#
#
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/entity/vfx_process/main

# Ownerの最大体力をスコアで取得
    execute at @a[distance=..100] if score @s SP.UserID = @p UserID store result score @s SP.MaxHealth run attribute @p generic.max_health get 1

# 
