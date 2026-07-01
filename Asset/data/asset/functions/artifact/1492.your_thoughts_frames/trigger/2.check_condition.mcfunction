#> asset:artifact/1492.your_thoughts_frames/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1492.your_thoughts_frames/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/offhand

# IsDoT:trueならCanUsedを削除
    execute if entity @s[tag=CanUsed] if data storage asset:context Attack{IsDoT:true} run tag @s remove CanUsed
# バニラ攻撃の場合はCanUsedを削除
    execute if data storage asset:context Attack{IsVanilla:1b} run tag @s remove CanUsed

# 3.1416%の確率でCanUsedを残す(7%*51%*88%=3.1416%)
    execute unless predicate lib:random_pass_per/7 run tag @s remove CanUsed
    execute unless predicate lib:random_pass_per/51 run tag @s remove CanUsed
    execute unless predicate lib:random_pass_per/88 run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1492.your_thoughts_frames/trigger/3.main
