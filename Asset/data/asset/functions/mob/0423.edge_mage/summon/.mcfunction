#> asset:mob/0423.edge_mage/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/423/summon

# 元となるEntityを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit","AllowProcessingCommonTag","AlwaysInvisible"],Silent:1b,DeathLootTable:"minecraft:empty"}
