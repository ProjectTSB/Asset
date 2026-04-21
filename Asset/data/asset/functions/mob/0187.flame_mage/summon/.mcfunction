#> asset:mob/0187.flame_mage/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/187/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Silent:1b,Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","AlwaysSlowFall","AntiBurn"],DeathLootTable:"empty"}
