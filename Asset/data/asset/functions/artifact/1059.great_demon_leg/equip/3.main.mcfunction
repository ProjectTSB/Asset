#> asset:artifact/1059.great_demon_leg/equip/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1059.great_demon_leg/equip/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/legs

# 演出
    execute positioned ~ ~0.6 ~ run function asset:artifact/1057.great_demon_head/equip/vfx
