#> asset:mob/0341.louvert/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/341/summon

# 元となるEntityを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AllowProcessingCommonTag","AlwaysInvisible"],NoAI:1b,Silent:1b,DeathLootTable:"empty"}
