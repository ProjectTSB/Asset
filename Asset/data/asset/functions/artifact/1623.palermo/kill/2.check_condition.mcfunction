#> asset:artifact/1623.palermo/kill/2.check_condition
#
#
#
# @within function asset:artifact/1623.palermo/kill/1.trigger
# Metadataをチェックして実行
    execute if data storage asset:context Killed{Metadata:"1623.palermo"} run function asset:artifact/1623.palermo/kill/3.main
