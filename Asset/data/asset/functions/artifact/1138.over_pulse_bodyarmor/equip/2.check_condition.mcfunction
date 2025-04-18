#> asset:artifact/1138.over_pulse_bodyarmor/equip/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1138.over_pulse_bodyarmor/equip/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    data modify storage asset:artifact DisabledCheckFlag set value {LocalCooldown:true}
    function asset:artifact/common/check_condition/chest
# 他にアイテム等確認する場合はここに書く

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1138.over_pulse_bodyarmor/equip/3.main
