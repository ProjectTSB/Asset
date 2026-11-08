#> asset:artifact/1647.armillary_sphere/dis_equip/2.check_condition
#
#
#
# @within function asset:artifact/1647.armillary_sphere/dis_equip/1.trigger

#> private
# @private
    #declare score_holder $A1647.Count

# ホットバーにあるArtifact1647の個数を取得、0なら効果を消す
    execute store result score $A1647.Count Temporary if data storage asset:context New.Items.hotbar[{tag:{TSB:{ID:1647}}}]
    execute if score $A1647.Count Temporary matches 0 if entity @s[tag=A1647.Equipping] run function asset:artifact/1647.armillary_sphere/dis_equip/3.main

# リセット
    scoreboard players reset $A1647.Count
