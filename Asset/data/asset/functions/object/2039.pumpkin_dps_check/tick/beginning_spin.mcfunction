#> asset:object/2039.pumpkin_dps_check/tick/beginning_spin
#
#
#
# @within function asset:object/2039.pumpkin_dps_check/tick/

# 徐々に加速する縦回転をする
    data modify storage asset:temp Args set from storage asset:context this.InterpolationList[-1]
    #tellraw @a {"storage":"asset:temp","nbt":"Args"}
    function asset:object/2039.pumpkin_dps_check/tick/set_spin/beginning.m with storage asset:temp Args
    data remove storage asset:temp Args
