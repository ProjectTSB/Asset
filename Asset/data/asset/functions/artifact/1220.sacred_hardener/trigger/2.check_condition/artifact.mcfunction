#> asset:artifact/1220.sacred_hardener/trigger/2.check_condition/artifact
#
#
#
# @within function asset:artifact/1220.sacred_hardener/trigger/2.check_condition

#> private
# @private
    #declare score_holder $XW.Durability

# 加工済み用エラーメッセージ
    execute if data storage asset:context Items.offhand.tag.Hardened run tellraw @s [{"text":"既にその防具は加工済みのようだ…"}]
    execute if data storage asset:context Items.offhand.tag.Hardened run return run tag @s remove CanUsed

# 圧縮防具
    # それぞれチェック
        execute if data storage asset:context id{offhand:90} run tag @s add XW.SetArmor
        execute if data storage asset:context id{offhand:90} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold: 5}
        execute if data storage asset:context id{offhand:91} run tag @s add XW.SetArmor
        execute if data storage asset:context id{offhand:91} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:30}
        execute if data storage asset:context id{offhand:92} run tag @s add XW.SetArmor
        execute if data storage asset:context id{offhand:92} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:30}
        execute if data storage asset:context id{offhand:93} run tag @s add XW.SetArmor
        execute if data storage asset:context id{offhand:93} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:55}
        execute if data storage asset:context id{offhand:94} run tag @s add XW.SetArmor
        execute if data storage asset:context id{offhand:94} run function asset:artifact/1220.sacred_hardener/trigger/2.check_condition/check_progress.m {Threshold:80}
        execute if entity @s[tag=!XW.SetArmor,tag=!CanUsed] run return run tellraw @s [{"text":"その防具を加工することは出来ないようだ…"}]
    # 耐久チェック
        execute store result score $XW.Durability Temporary run data get storage asset:context Items.mainhand.tag.TSB.RemainingCount
        execute unless score $XW.Durability Temporary matches 4.. run tellraw @s [{"text":"圧縮された防具を加工するには足りないようだ…"}]
        execute unless score $XW.Durability Temporary matches 4.. run tag @s remove CanUsed
        scoreboard players reset $XW.Durability Temporary
