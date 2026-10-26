#> asset:artifact/1680.pluvia/trigger/summon_object/random_rotate
#
#
#
# @within function
#   asset:artifact/1680.pluvia/trigger/3.main
#   asset:artifact/1680.pluvia/trigger/summon_object/spread

# Yaw,Pitchをランダムに設定
    execute store result storage asset:temp Args.Yaw float 1 run random value 0..359
    execute store result storage asset:temp Args.Pitch float 1 run random value -90..-65

# 召喚
    function asset:artifact/1680.pluvia/trigger/summon_object/summon.m with storage asset:temp Args

# リセット
    data remove storage asset:temp Args
