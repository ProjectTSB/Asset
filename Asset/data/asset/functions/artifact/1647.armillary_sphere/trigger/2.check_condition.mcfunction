#> asset:artifact/1647.armillary_sphere/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1647.armillary_sphere/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1647
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar

# 装備中に信仰の変更などで使えなくなった場合はすべてリセット
    execute if entity @s[tag=A1647.Equipping,tag=!CanUsed] run function asset:artifact/1647.armillary_sphere/trigger/reset

# 他にアイテム等確認する場合はここに書く
# すでに装備しているならキャンセル
    execute if entity @s[tag=A1647.Equipping] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1647.armillary_sphere/trigger/3.main
