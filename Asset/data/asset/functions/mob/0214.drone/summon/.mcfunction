#> asset:mob/0214.drone/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/214/summon

# 元となるEntityを召喚する
    summon phantom ~ ~ ~ {Tags:["MobInit","AntiBurn","AlwaysInvisible"],DeathLootTable:"empty",Silent:1b,NoAI:1b}
