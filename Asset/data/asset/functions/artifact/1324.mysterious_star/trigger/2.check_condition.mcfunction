#> asset:artifact/1324.mysterious_star/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1324.mysterious_star/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1324
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 他にプレイヤーがいない場合は発動しない
    execute if entity @s[tag=CanUsed] unless entity @p[tag=!this,tag=!PlayerShouldInvulnerable,distance=..20] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1324.mysterious_star/trigger/3.main
