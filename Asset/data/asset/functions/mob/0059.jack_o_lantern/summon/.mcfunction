#> asset:mob/0059.jack_o_lantern/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/59/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {DeathTime:19s,Silent:1b,Tags:["MobInit","AlwaysInvisible","AntiBurn","AntiVoid"],DeathLootTable:"empty"}
