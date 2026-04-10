#> asset:artifact/1363.hydra_fang/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1363.hydra_fang/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1363
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# IsDoT:trueでないならCanUsedを削除
    execute if entity @s[tag=CanUsed] unless data storage asset:context Attack{IsDoT:true} run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1363.hydra_fang/trigger/3.main
