#> asset:artifact/1614.wooden_snake_branch/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1614.wooden_snake_branch/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# 攻撃用Objectを召喚する
    data modify storage api: Argument.ID set value 1194
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    #ダメージ設定
    execute store result storage api: Argument.FieldOverride.Damage double 1 run random value 50..90
    #MP回復量バフの設定
    data modify storage api: Argument.FieldOverride.Duration set value 60
    data modify storage api: Argument.FieldOverride.MPModifier set value 0.15d
    execute at @e[scores={18U.StareTime=40..},distance=..8,sort=nearest,limit=1] facing entity @s eyes positioned ^ ^ ^0.6 run function api:object/summon


#スコアリセット
    scoreboard players reset @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..64] 18U.StareTime
