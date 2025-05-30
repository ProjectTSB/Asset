#> asset:artifact/0733.percentage_sword/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/0733.percentage_sword/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# tag=!UninterferableなVictimがいなければCanUsedを削除
    execute unless entity @e[type=#lib:living,tag=Victim,tag=!Uninterferable,distance=..20] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0733.percentage_sword/trigger/3.main
