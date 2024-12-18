#> asset:mob/0393.labyria_first/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/393/summon

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AlwaysInvisible","Immovable"],NoAI:1b,Silent:1b,DeathLootTable:"empty"}
