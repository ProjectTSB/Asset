#> asset:mob/0380.haruclaire_v3/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0380.haruclaire_v3/_/summon

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit"],DeathLootTable:"asset:mob/death/0380.haruclaire_v3"}