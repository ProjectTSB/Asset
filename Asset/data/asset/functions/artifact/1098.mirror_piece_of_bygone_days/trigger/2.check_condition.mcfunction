#> asset:artifact/1098.mirror_piece_of_bygone_days/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1098.mirror_piece_of_bygone_days/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1098
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 確率でCanUsedを削除
    execute unless predicate lib:random_pass_per/20 run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1098.mirror_piece_of_bygone_days/trigger/3.main
