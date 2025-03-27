#> asset:object/1043.mini_black_hole/tick/vfx/m
#
# マクロによるVFXの呼び出し
#
# @input args
#   Num : VFXのFunction番号
# @within function asset:object/1043.mini_black_hole/tick/

# VFXを呼び出す
$function asset:object/1043.mini_black_hole/tick/vfx/fc_$(Num)
