#> asset:artifact/0606.traffic_sign/attack_melee/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/606/attack_melee/check

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く
    
# CanUsedタグをチェックして.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0606.traffic_sign/attack_melee/