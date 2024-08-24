#> asset:mob/0398.crystal_healer/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0398.crystal_healer/_/summon

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0398.crystal_healer",NoAI:1b,Silent:1b,DeathTime:19s}
