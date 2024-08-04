#> asset:mob/0265.dark_familiar/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0265.dark_familiar/_/summon

# 元となるMobを召喚する
summon husk ~ ~ ~ {NoAI:1b,Team:"NoCollision",Tags:["MobInit","AlwaysInvisible","AlwaysSlowFall"],DeathTime:19s,DeathLootTable:"asset:mob/death/0265.dark_familiar",IsBaby:1b,Silent:1b}
