#> asset:mob/0445.sharkboss/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/445/summon

# 元となるEntityを召喚する
summon ravager ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","CD.EntityRoot"],NoAI:1b,Silent:1b,DeathLootTable:"empty"}
