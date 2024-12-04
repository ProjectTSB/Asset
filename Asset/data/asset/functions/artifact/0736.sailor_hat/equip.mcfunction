#> asset:artifact/0736.sailor_hat/equip
#
# 装備時に実行される処理
#
# @within function asset:artifact/alias/736/equip

# vfx
    execute rotated ~ 0 positioned ~ ~1.2 ~ positioned ^ ^ ^-0.5 run function asset:artifact/0736.sailor_hat/vfx
    playsound entity.player.splash.high_speed player @a ~ ~ ~ 0.4 2 0
