#> asset:artifact/1287.sword_of_rebellion/attack_melee/2.check_condition
#
# 神器の発動条件をチェックします
#
# @within function asset:artifact/1287.sword_of_rebellion/attack_melee/1.trigger

# 神器の基本的な条件の確認を行うfunction、成功している場合CanUsedタグが付く
    data modify storage asset:artifact DisabledCheckFlag.Believe set value true
    function asset:artifact/common/check_condition/mainhand
# 他にアイテム等確認する場合はここに書く

# いずれかの神を信仰している場合使用できない
    execute if entity @s[tag=!CanUsed] run return fail
    execute unless predicate player_manager:is_believe/null unless score @s ZR.BelieveMsgCooldown matches 1.. run tellraw @s [{"text":"剣に拒絶されている…","color":"red"}]
    execute unless predicate player_manager:is_believe/null unless score @s ZR.BelieveMsgCooldown matches 1.. run schedule function asset:artifact/1287.sword_of_rebellion/schedule_loop 1t replace
    execute unless predicate player_manager:is_believe/null unless score @s ZR.BelieveMsgCooldown matches 1.. run scoreboard players set @s ZR.BelieveMsgCooldown 100
    execute unless predicate player_manager:is_believe/null run tag @s remove CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/1287.sword_of_rebellion/attack_melee/3.main
