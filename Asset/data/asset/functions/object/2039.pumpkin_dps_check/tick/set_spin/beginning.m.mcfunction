#> asset:object/2039.pumpkin_dps_check/tick/set_spin/beginning.m
#
#
#
# @within function
#   asset:object/2039.pumpkin_dps_check/tick/move
#   asset:object/2039.pumpkin_dps_check/tick/beginning_spin

# メモ
# ふつう: [0f,0f,0f,1f]
# 下向き: [0.7071f,0f,0f,0.7071]
# ぎゃく: [1f,0f,0f,0f]
# 下向き: [-0.7071f,0f,0f,0.7071]

#
    execute unless function asset:object/2039.pumpkin_dps_check/tick/set_spin/check run return fail

# 演出
    execute positioned ~ ~3 ~ run function asset:object/2039.pumpkin_dps_check/tick/set_spin/vfx

# 音
    $playsound minecraft:entity.wither.shoot hostile @a[distance=..64] ~ ~ ~ 0.8 $(Pitch) 0.8

# Spinが2の際に顔を変更
    execute if data storage asset:context this{Spin:2} run function asset:object/2039.pumpkin_dps_check/tick/set_spin/change_face

#
    $function asset:object/2039.pumpkin_dps_check/tick/set_spin/spin.m {Interpolation:$(Interpolation)}
