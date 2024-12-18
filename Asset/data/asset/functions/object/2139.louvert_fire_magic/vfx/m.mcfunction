#> asset:object/2139.louvert_fire_magic/vfx/m
#
# マクロによるVFXの呼び出し
#
# @input args
#   Num : VFXのFunction番号
# @within function asset:object/2139.louvert_fire_magic/tick/

# VFXを呼び出す
$function asset:object/2139.louvert_fire_magic/vfx/fc_$(Num)
