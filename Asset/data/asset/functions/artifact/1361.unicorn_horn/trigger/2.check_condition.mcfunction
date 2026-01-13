#> asset:artifact/1361.unicorn_horn/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1361.unicorn_horn/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1361
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 仕様書
# 最大ダメージを取得し、攻撃対象の中で「ダメージ量が最大ダメージと一致する対象」をTempTargetとし
# TempTargetの中で最も近い対象を攻撃対象とする。

# 要求ダメージ設定(10倍)
    execute if entity @s[tag=CanUsed] run scoreboard players set $RequireDamage Temporary 16000

# 最大ダメージが要求ダメージ以上か？
    execute if entity @s[tag=CanUsed] store result score $MaxDamage Temporary run data get storage asset:context Attack.Amount 10
    execute if entity @s[tag=CanUsed] unless score $MaxDamage Temporary >= $RequireDamage Temporary run tag @s remove CanUsed

    # execute if entity @s[tag=CanUsed] run say 要求ダメージok

# 最大ダメージを与えた対象を探す
    execute if entity @s[tag=CanUsed] run data modify storage asset:temp _.To set from storage asset:context Attack.To
    execute if entity @s[tag=CanUsed] run data modify storage asset:temp _.Amounts set from storage asset:context Attack.Amounts
    execute if entity @s[tag=CanUsed] run function asset:artifact/1361.unicorn_horn/trigger/2.check_condition/search_max_damage_target

# この段階でTempTargetがいなければCanUsedを削除
    execute if entity @s[tag=CanUsed] unless entity @e[type=#lib:living_without_player,tag=Victim,tag=TempTarget,distance=..150] run tag @s remove CanUsed

    # execute if entity @s[tag=CanUsed] run say TempTarget ok

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1361.unicorn_horn/trigger/3.main

# リセット
    data remove storage asset:temp _
    scoreboard players reset $MaxDamage Temporary
    scoreboard players reset $RequireDamage Temporary
    tag @e[type=#lib:living_without_player,tag=Victim,tag=TempTarget,distance=..150] remove TempTarget
