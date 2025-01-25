#> asset:artifact/0728.magatama_of_soul_eating/kill/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/728/kill/check

    function asset:artifact/common/check_condition/hotbar
# 他にアイテム等確認する場合はここに書く

# Victimが8m以内にいるか判定
    # execute if entity @s[tag=CanUsed] unless entity @e[type=#lib:living,tag=Victim,distance=..8] run tag @s remove CanUsed
