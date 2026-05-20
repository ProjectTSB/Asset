#> asset:artifact/1430.shield_of_fate/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1430.shield_of_fate/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1430
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 確率10%を引けなかったらCanUsedタグを削除
    execute if entity @s[tag=CanUsed] unless predicate lib:random_pass_per/10 run tag @s remove CanUsed
# 既にダメージを受けている場合はタグを削除
    execute if data storage asset:context Damage{IsVanilla:1b} run tag @s remove CanUsed
# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1430.shield_of_fate/trigger/3.main
