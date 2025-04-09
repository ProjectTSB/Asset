#> asset:artifact/0292.craving_sword/kill/2.check_condition
#
#
#
# @within function asset:artifact/0292.craving_sword/kill/1.trigger

# Metadataをチェックして実行
    execute if data storage asset:context Killed{Metadata:"84.CravingSword"} run function asset:artifact/0292.craving_sword/kill/3.main
