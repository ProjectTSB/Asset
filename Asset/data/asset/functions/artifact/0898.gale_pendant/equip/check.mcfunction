#> asset:artifact/0898.gale_pendant/equip/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/898/equip/check

    data modify storage asset:artifact TargetID set value 898
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く