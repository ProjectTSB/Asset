#> asset:mob/0373.lightning_spellbook/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0373.lightning_spellbook/_/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {NoAI:1b,Silent:1b,Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0373.lightning_spellbook"}
