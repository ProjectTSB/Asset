#> asset:mob/0370.wave_spellbook/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within function asset:mob/alias/370/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {NoAI:1b,Silent:1b,Tags:["MobInit","ProcessCommonTag","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0370.wave_spellbook"}
