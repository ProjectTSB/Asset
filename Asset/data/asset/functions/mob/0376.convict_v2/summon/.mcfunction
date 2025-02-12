#> asset:mob/0376.convict_v2/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/376/summon

# 元となるEntityを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AllowProcessingCommonTag","AlwaysInvisible"],PersistenceRequired:1b,Silent:1b,NoAI:1b}
