#> asset:mob/0354.rubiel_scythe/tick/app/3.apply_angle.m
#
# Mobが生きている間毎tick実行されるfunction
#
# @within function asset:mob/0354.rubiel_scythe/tick/2.tick

# 回転
    $data modify entity @s {} merge value {transformation:{right_rotation:{axis:[0f,1f,0f],angle:$(Angle)}}}