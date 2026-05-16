#> asset:object/1061.azure_jelly/tick/turn/random_rotate
#
#
#
# @within function asset:object/1061.azure_jelly/tick/turn/

# Rotation:[*,0f]にする
    data modify storage asset:temp 1061.Rotation set value [0f,0f]
    execute store result storage asset:temp 1061.Rotation[0] float 0.01 run random value 0..35999
    data modify entity @s Rotation set from storage asset:temp 1061.Rotation

# リセット
    data remove storage asset:temp 1061

# プレイヤーとの距離に応じて速度倍率を設定する
# この関数が呼び出されてる時点で近いはずだが、一応共通処理として、ね
    function asset:object/1061.azure_jelly/tick/turn/set_speed_multiplier/player
