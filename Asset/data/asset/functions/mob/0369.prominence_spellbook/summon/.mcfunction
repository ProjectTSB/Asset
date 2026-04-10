#> asset:mob/0369.prominence_spellbook/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/369/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {NoAI:1b,Silent:1b,Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","AntiBurn"],DeathLootTable:"asset:mob/death/0369.prominence_spellbook"}
