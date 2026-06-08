#> asset:mob/2004.movement_speed_tp_mixin/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/2004/init

# IsBabyの場合、移動速度を2/3にする
    execute if data entity @s {IsBaby:1b} store result entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base double 0.006667 run attribute @s generic.movement_speed base get 100
