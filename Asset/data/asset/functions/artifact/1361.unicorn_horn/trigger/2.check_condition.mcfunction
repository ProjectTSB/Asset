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

# CanUsedじゃなければreturn
    execute if entity @s[tag=!CanUsed] run return fail

# IsDoT:trueならreturn
    execute if data storage asset:context Attack{IsDoT:true} run return run tag @s remove CanUsed

# Victimがいなければreturn
    execute unless entity @e[type=#lib:living_without_player,tag=Victim,distance=..150,limit=1] run return run tag @s remove CanUsed

# 最大ダメージが要求ダメージ以上か？
    scoreboard players set $RequireDamage Temporary 16000
    execute store result score $MaxDamage Temporary run data get storage asset:context Attack.Amount 10
    execute unless score $MaxDamage Temporary >= $RequireDamage Temporary run return run function asset:artifact/1361.unicorn_horn/trigger/2.check_condition/reset

# 最大ダメージを与えた対象を探す
    data modify storage asset:temp _.To set from storage asset:context Attack.To
    data modify storage asset:temp _.Amounts set from storage asset:context Attack.Amounts
    function asset:artifact/1361.unicorn_horn/trigger/2.check_condition/search_max_damage_target

# この段階でTempTargetがいなければreturn
    execute unless entity @e[type=#lib:living_without_player,tag=Victim,tag=TempTarget,distance=..150,limit=1] run return run function asset:artifact/1361.unicorn_horn/trigger/2.check_condition/reset

# 3.main.mcfunctionを実行する
    function asset:artifact/1361.unicorn_horn/trigger/3.main

# リセット
    function asset:artifact/1361.unicorn_horn/trigger/2.check_condition/reset
