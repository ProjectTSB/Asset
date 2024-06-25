#> asset:mob/0228.frost_eye/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0228.frost_eye/_/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit"],DeathLootTable:"asset:mob/death/0228.frost_eye"}