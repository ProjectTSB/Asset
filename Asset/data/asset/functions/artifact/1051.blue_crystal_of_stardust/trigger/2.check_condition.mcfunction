#> asset:artifact/1051.blue_crystal_of_stardust/trigger/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1051.blue_crystal_of_stardust/trigger/1.trigger

# ID指定する
    data modify storage asset:artifact TargetID set value 1051
# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 3回ごとに効果が発動する

# CanUsedなら使用回数スコアを加算
    execute if entity @s[tag=CanUsed] run scoreboard players add @s T7.UseCount 1

# スコアが2以下ならCanUsedを削除
    execute if entity @s[scores={T7.UseCount=..2}] run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1051.blue_crystal_of_stardust/trigger/3.main

# スコアが3以上になったらリセット
    execute if entity @s[scores={T7.UseCount=3..}] run scoreboard players reset @s T7.UseCount