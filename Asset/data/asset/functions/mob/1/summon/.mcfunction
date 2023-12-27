#> asset:mob/1/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/1/_/summon

# 元となるMobを召喚する
    summon skeleton ~ ~ ~ {Tags:["MobInit"],DeathLootTable:"asset:mob/death/1"}