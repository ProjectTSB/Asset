#> asset:mob/0380.haruclaire_v3/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/380/summon

# 元となるEntityを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","AK.EntityRoot"],NoAI:1b,Silent:1b,DeathLootTable:"minecraft:empty"}
