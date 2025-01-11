#> asset:object/1069.icicle_manager/tick/summon_icicle/
#
#
#
# @within function asset:object/1069.icicle_manager/tick/

# ランダムオフセットを設定する
    execute store result storage asset:temp Args.OffsetX double 0.01 run random value -100..100
    execute store result storage asset:temp Args.OffsetZ double 0.01 run random value -20..20
# 召喚
    function asset:object/1069.icicle_manager/tick/summon_icicle/summon.m with storage asset:temp Args
# リセット
    data remove storage asset:temp Args
