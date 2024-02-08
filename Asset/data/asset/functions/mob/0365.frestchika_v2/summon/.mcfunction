#> asset:mob/0365.frestchika_v2/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0365.frestchika_v2/_/summon

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0365.frestchika_v2",NoAI:1b,Silent:1b}