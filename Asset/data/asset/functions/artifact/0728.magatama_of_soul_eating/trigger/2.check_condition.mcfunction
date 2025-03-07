#> asset:artifact/0728.magatama_of_soul_eating/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0728.magatama_of_soul_eating/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 728
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# Victimが8m以内にいるか判定
    # execute if entity @s[tag=CanUsed] unless entity @e[type=#lib:living,tag=Victim,distance=..8] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0728.magatama_of_soul_eating/trigger/3.main
