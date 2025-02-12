#> asset:mob/0401.darkness_spellbook/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/401/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {NoAI:1b,Silent:1b,Tags:["MobInit","AllowProcessingCommonTag","AlwaysInvisible"],DeathLootTable:"empty"}
