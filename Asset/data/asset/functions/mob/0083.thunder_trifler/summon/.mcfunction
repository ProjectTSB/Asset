#> asset:mob/0083.thunder_trifler/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0083.thunder_trifler/_/summon

# 元となるMobを召喚する
    summon skeleton ~ ~ ~ {Tags:["MobInit"],DeathLootTable:"asset:mob/death/0083.thunder_trifler"}