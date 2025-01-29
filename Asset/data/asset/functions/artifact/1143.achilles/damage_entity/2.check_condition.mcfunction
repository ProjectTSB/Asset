#> asset:artifact/1143.achilles/damage_entity/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1143.achilles/damage_entity/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/legs

# 背後に Attacker がいるか確認
    execute positioned ^ ^ ^-25 unless entity @e[type=#lib:living,tag=Attacker,distance=..25,limit=1] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1143.achilles/damage_entity/3.main
