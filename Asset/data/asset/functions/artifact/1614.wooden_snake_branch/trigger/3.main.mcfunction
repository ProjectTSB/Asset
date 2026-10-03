#> asset:artifact/1614.wooden_snake_branch/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1614.wooden_snake_branch/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# 攻撃用Objectを召喚する
    data modify storage api: Argument.ID set value 1194
    execute store result storage api: Argument.FieldOverride.Damage double 1 run random value 50..90
    data modify storage api: Argument.FieldOverride.AdditionalMPHeal set from storage api: PersistentArgument.AdditionalMPHeal
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute at @e[scores={18U.StareTime=40..},distance=..8,sort=nearest,limit=1] facing entity @s eyes positioned ^ ^ ^0.6 run function api:object/summon


#スコアリセット
    scoreboard players reset @e[distance=..64] 18U.StareTime
