#> asset:mob/0398.crystal_healer/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/398/summon

# 元となるMobを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","Immovable"],NoAI:1b,Silent:1b,DeathTime:19s,DeathLootTable:"empty"}
