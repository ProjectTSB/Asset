#> asset:mob/0224.fake_pumpkin/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/224/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {DeathTime:19s,NoAI:1b,Silent:1b,Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"empty"}
