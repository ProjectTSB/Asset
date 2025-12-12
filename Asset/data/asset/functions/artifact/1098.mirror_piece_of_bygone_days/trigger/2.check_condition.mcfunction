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

# CanUsedなら何体に攻撃したかの数を取得し、その回数だけ確率で判定
    execute if entity @s[tag=CanUsed] store result score $AttackCount Temporary if data storage asset:context Attack.To[]
    execute if entity @s[tag=CanUsed] run function asset:artifact/1098.mirror_piece_of_bygone_days/trigger/2.check_condition/check_recursive

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1098.mirror_piece_of_bygone_days/trigger/3.main

# リセット
    scoreboard players reset $AttackCount Temporary
