#> asset:mob/0219.aorta/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/219/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Silent:1b,Tags:["MobInit"],DeathLootTable:"empty"}
