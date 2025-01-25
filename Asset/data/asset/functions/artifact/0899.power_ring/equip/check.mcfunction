#> asset:artifact/0899.power_ring/equip/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/899/equip/check

    data modify storage asset:artifact TargetID set value 899
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar