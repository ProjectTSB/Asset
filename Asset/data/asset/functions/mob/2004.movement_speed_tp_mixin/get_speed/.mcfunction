#> asset:mob/2004.movement_speed_tp_mixin/get_speed/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/2004/get_speed

# attributeの移動速度を取得
    execute store result storage asset:context this.Speed double 0.01 run attribute @s generic.movement_speed get 100
