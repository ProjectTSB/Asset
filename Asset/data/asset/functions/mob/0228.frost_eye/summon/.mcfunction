#> asset:mob/0228.frost_eye/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/228/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Silent:1b,NoAI:1b,Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"empty"}
