#> asset:artifact/1110.lantern_of_firefly/trigger/2.check_condition/calc_count
#
#
#
# @within function asset:artifact/1110.lantern_of_firefly/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $AttackCount

# Toの要素数を取得し、加算
    execute store result score $AttackCount Temporary if data storage asset:context Attack.To[]
    scoreboard players operation @s UU.AttackCount += $AttackCount Temporary

# リセット
    scoreboard players reset $AttackCount Temporary
