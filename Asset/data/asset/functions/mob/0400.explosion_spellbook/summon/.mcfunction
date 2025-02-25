#> asset:mob/0400.explosion_spellbook/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/400/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {NoAI:1b,Silent:1b,Tags:["MobInit","ProcessCommonTag","AlwaysInvisible"],DeathLootTable:"empty"}
