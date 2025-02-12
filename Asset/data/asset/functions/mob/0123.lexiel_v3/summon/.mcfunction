#> asset:mob/0123.lexiel_v3/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/123/summon

# 元となるEntityを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible"],PersistenceRequired:1b,Silent:1b,NoAI:1b,DeathLootTable:"empty"}
