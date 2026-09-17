#> asset:artifact/1613.horn_of_thunderbolt/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1613.horn_of_thunderbolt/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/offhand
# 他にアイテム等確認する場合はここに書く

# Victimが10m以上離れてなかったらreturn
    execute unless entity @e[type=#lib:living_without_player,tag=Victim,tag=Enemy,distance=10..64] run return fail

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1613.horn_of_thunderbolt/trigger/3.main
