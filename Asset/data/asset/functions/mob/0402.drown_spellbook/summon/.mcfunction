#> asset:mob/0402.drown_spellbook/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/402/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {NoAI:1b,Silent:1b,Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"empty"}
