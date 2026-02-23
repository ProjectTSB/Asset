#> asset:artifact/1311.yearning_rose/receive_heal/2.check_condition
#
#
#
# @within function asset:artifact/1311.yearning_rose/receive_heal/1.trigger

#> Private
# @private
    #declare score_holder $Heal

# Metadataがなければ失敗
    execute unless data storage asset:context ReceiveHeal{Metadata:"10F.Heal"} run return fail

# 回復量を取得
    execute store result score $Heal Temporary run data get storage asset:context ReceiveHeal.Amount 10
    execute run scoreboard players operation @s 10F.HealSum += $Heal Temporary

# 回復量の合計が一定以上なら発動
    execute if score @s 10F.HealSum matches 400.. run function asset:artifact/1311.yearning_rose/receive_heal/3.main

# リセット
    scoreboard players reset $Heal Temporary
