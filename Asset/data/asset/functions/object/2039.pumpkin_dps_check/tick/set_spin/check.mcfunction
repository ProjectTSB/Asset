#> asset:object/2039.pumpkin_dps_check/tick/set_spin/check
#
#
#
# @within function
#   asset:object/2039.pumpkin_dps_check/tick/set_spin/m
#   asset:object/2039.pumpkin_dps_check/tick/set_spin/beginning.m

# インターバルをデクリメント
    execute store result storage asset:context this.SpinInterval int 0.9999999999 run data get storage asset:context this.SpinInterval
    #tellraw @a {"storage":"asset:context","nbt":"this.SpinInterval"}
# インターバルが0でなければ失敗
    execute unless data storage asset:context this{SpinInterval:0} run return 0

# InterpolationListの最後尾のデータを削除
    data remove storage asset:context this.InterpolationList[-1]

# 成功
    return 1
