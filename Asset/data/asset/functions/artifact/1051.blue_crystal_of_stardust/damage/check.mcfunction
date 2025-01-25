#> asset:artifact/1051.blue_crystal_of_stardust/damage/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1051/damage/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# 3回ごとに効果が発動する

# CanUsedなら使用回数スコアを加算
    execute if entity @s[tag=CanUsed] run scoreboard players add @s T7.UseCount 1

# スコアが2以下ならCanUsedを削除
    execute if entity @s[scores={T7.UseCount=..9}] run tag @s remove CanUsed

# CanUsedタグをチェックして.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1051.blue_crystal_of_stardust/damage/
