#> asset:artifact/0292.craving_sword/kill/2.check_condition
#
#
#
# @within function asset:artifact/0292.craving_sword/kill/1.trigger

# MetaDataをチェックしてmeleeトリガーでのkillか確認する
    execute if data storage asset:context Killed{Metadata:"84.CravingSword"} run tag @s add CanUsed

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if entity @s[tag=CanUsed] run function asset:artifact/0292.craving_sword/kill/3.main
