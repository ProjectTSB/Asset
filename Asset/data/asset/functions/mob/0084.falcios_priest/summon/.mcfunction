#> asset:mob/0084.falcios_priest/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0084.falcios_priest/_/summon

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit"],DeathLootTable:"asset:mob/death/0084.falcios_priest"}