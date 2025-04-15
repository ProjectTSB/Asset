#> asset:object/1044.thunder_storm/tick/vfx/ready/m
#
# マクロによるVFXの呼び出し
#
# @input args
#   Num : VFXのFunction番号
# @within function asset:object/1044.thunder_storm/tick/

# VFXを呼び出す
$function asset:object/1044.thunder_storm/tick/vfx/ready/fc_$(Num)
