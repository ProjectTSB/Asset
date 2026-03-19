#> asset:object/2039.pumpkin_dps_check/tick/move/
#
#
#
# @within function asset:object/2039.pumpkin_dps_check/tick/

# 移動
    tp @s ^ ^ ^3

# 回転
    function asset:object/2039.pumpkin_dps_check/tick/set_spin/m {Interpolation:3}

# 演出
    playsound entity.breeze.shoot hostile @a[distance=..64] ~ ~ ~ 0.8 2 0.8

# ダメージ
    execute at @s run function asset:object/2039.pumpkin_dps_check/tick/move/damage
