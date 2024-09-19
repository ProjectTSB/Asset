#> asset:mob/0393.labyria_first/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0393.labyria_first/_/summon

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0393.labyria_first",NoAI:1b,Silent:1b}
