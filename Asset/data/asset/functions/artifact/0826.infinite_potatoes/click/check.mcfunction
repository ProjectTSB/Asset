#> asset:artifact/0826.infinite_potatoes/click/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/826/click/check

#> Val
# @private
    #declare score_holder $ItemCount

execute store result score $ItemCount Temporary run clear @s bone_meal 0
execute if score $ItemCount Temporary matches ..0 run tag @s remove CanUsed
execute if score $ItemCount Temporary matches ..0 run function lib:message/artifact/dont_have_require_items
scoreboard players reset $ItemCount Temporary
