#> asset:mob/0265.dark_familiar/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/265/summon

# 元となるMobを召喚する
summon husk ~ ~ ~ {NoAI:1b,Team:"NoCollision",Tags:["MobInit","AlwaysInvisible","AlwaysSlowFall"],DeathTime:19s,IsBaby:1b,Silent:1b,DeathLootTable:"empty"}
