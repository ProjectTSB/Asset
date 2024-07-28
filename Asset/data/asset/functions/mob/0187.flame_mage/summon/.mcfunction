#> asset:mob/0187.flame_mage/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/0187.flame_mage/_/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Silent:1b,Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0187.flame_mage"}
