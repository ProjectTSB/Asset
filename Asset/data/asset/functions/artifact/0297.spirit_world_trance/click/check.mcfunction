#> asset:artifact/0297.spirit_world_trance/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/297/click/check

# 戦闘中に使うべからず
    execute if predicate lib:in_battle run tellraw @s {"text":"戦闘中は使用できません。","color":"red"}
    execute if predicate lib:in_battle run tag @s remove CanUsed

# 愚か者を弾く機構
    execute if entity @s[gamemode=spectator,tag=CanUsed] run tag @s remove CanUsed
