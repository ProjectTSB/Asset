#> asset:mob/0392.ecual_first/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/392/summon

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","Immovable"],NoAI:1b,Silent:1b,DeathLootTable:"empty"}
