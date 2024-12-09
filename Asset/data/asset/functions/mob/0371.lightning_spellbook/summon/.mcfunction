#> asset:mob/0371.lightning_spellbook/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within function asset:mob/alias/371/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {NoAI:1b,Silent:1b,Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"empty"}
