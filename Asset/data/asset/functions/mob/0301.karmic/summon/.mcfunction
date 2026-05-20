#> asset:mob/0301.karmic/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/301/summon

# 元となるEntityを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible"],PersistenceRequired:1b,Silent:1b,NoAI:1b,DeathLootTable:"empty"}
