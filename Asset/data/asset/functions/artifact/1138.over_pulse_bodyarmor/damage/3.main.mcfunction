#> asset:artifact/1138.over_pulse_bodyarmor/damage/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1138.over_pulse_bodyarmor/damage/2.check_condition

# 現在 MP を取得する
    function api:mp/get_current
# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/chest
# 現在MPを戻す
    data modify storage api: Argument.MP set from storage api: Return.CurrentMP
    function api:mp/set

# 音消し
    stopsound @s player item.armor.equip_leather
# クールダウン設定
    tag @s remove VM.NotDamaged
