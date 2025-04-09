#> asset:artifact/0292.craving_sword/kill/2.check_condition
#
#
#
# @within function asset:artifact/0292.craving_sword/kill/1.trigger

# CanUsedタグをチェックして3.main.mcfunctionを実行する
    execute if data storage asset:context Killed{Metadata:"84.CravingSword"} run function asset:artifact/0292.craving_sword/kill/3.main
