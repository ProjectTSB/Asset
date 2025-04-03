#> asset:object/1133.deep_azure_slash/tick/rotate
#
#
#
# @within function asset:object/1133.deep_azure_slash/tick/

# 角度をランダムにして斬撃obj召喚
    execute store result storage asset:temp Args.Rotation0 int 1 run random value 0..359
    execute store result storage asset:temp Args.Rotation1 int 1 run random value -120..120
    function asset:object/1133.deep_azure_slash/tick/summon_slash with storage asset:temp Args

# リセット
    data remove storage asset:temp Args
