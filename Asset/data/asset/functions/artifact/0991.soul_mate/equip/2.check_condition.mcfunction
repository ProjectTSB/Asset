#> asset:artifact/0991.soul_mate/equip/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0991.soul_mate/equip/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 991
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# ソウルメイトに加入している状態で再実行しない
    execute if entity @s[tag=RJ.SoulMate] run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0991.soul_mate/equip/3.main
