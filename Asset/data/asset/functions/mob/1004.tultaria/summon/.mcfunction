#> asset:mob/1004.tultaria/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/1004/summon

# 元となるEntityを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","RW.Opening","RW.PlayerFacing"],PersistenceRequired:1b,Invulnerable:1b,Silent:1b,NoAI:1b,DeathLootTable:"minecraft:empty"}
