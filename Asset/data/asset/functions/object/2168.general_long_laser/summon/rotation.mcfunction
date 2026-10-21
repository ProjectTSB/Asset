#> asset:object/2168.general_long_laser/summon/rotation
#
# 召喚時の向きを表示用の回転へ変換する
#
# @within function asset:object/2168.general_long_laser/summon/

# 横角度から回転軸と右回転を取得
    execute positioned 0.0 0.0 0.0 run tp @s ^1 ^ ^ ~ ~
    data modify storage asset:temp Args.LeftRotation.axis set from entity @s Pos
    execute store result storage asset:temp Args.RightRotation.angle float 0.000001745 run data get entity @s Rotation[0] 10000

# 縦角度[-90,90]を横角度[0,180]へ変換して左回転を取得
    execute rotated -90 ~ positioned 0.0 0.0 0.0 positioned ^ ^ ^1 rotated ~180 ~ positioned ^ ^ ^-1 rotated ~-90 ~ positioned ^ ^1 ^ rotated ~180 ~ positioned ^ ^-1 ^ facing 0.0 0.0 0.0 run tp @s 0.0 0.0 0.0 ~ ~
    execute store result storage asset:temp Args.LeftRotation.angle float 0.000001745 run data get entity @s Rotation[0] 10000

# 計算用のmarkerを削除
    kill @s
