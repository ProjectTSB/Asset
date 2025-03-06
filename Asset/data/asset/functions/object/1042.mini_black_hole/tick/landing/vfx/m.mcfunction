#> asset:object/1042.mini_black_hole/tick/landing/vfx/m
#
# マクロによるVFXの呼び出し
#
# @input args
#   Num : VFXのFunction番号
# @within function asset:object/1042.mini_black_hole/tick/landing/

# VFXを呼び出す
$function asset:object/1042.mini_black_hole/tick/landing/vfx/fc_$(Num)
