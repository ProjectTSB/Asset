#> asset:mob/0397.crystal_turret/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/397/summon

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0397.crystal_turret",NoAI:1b,Silent:1b,DeathTime:19s}
