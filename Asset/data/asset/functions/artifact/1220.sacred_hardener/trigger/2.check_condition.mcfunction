#> asset:artifact/1220.sacred_hardener/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1220.sacred_hardener/trigger/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# 何も持っていない場合
    execute unless data storage asset:context Items.offhand.id run tag @s remove CanUsed

# 神器 (圧縮防具) / 非神器 (バニラ防具) で場合分けする
    execute if entity @s[tag=CanUsed] if data storage asset:context id{offhand:-2} unless predicate asset:artifact/1220.sacred_hardener/has_armor run tellraw @s [{"text":"防具以外を加工することは出来ないようだ…"}]
    execute if entity @s[tag=CanUsed] if data storage asset:context id{offhand:-2} unless predicate asset:artifact/1220.sacred_hardener/has_armor run tag @s remove CanUsed
    execute if entity @s[tag=CanUsed] if data storage asset:context id{offhand:-2} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/non-artifact
    execute if entity @s[tag=CanUsed] unless data storage asset:context id{offhand:-2} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/artifact

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1220.sacred_hardener/trigger/3.main

# リセット
    tag @s remove XW.SetArmor
