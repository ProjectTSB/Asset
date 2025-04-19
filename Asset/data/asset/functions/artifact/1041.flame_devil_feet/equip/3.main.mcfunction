#> asset:artifact/1041.flame_devil_feet/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1041.flame_devil_feet/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# 演出
    execute positioned ~ ~0.2 ~ run function asset:artifact/1038.flame_devil_head/equip/vfx
