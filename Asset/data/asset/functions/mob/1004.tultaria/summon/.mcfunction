#> asset:mob/1004.tultaria/summon/
<<<<<<< HEAD
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/1004/summon

# 元となるEntityを召喚する
    summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AlwaysInvisible","RW.Boss","RW.Opening","RW.PlayerFacing"],PersistenceRequired:1b,Invulnerable:1b,Silent:1b,NoAI:1b,DeathLootTable:"asset:mob/death/1004.tultaria"}
=======
# @within asset:mob/alias/1004/summon

summon wither_skeleton ~ ~ ~ {Tags:["MobInit","AlwaysInvisible","RW.Boss"],PersistenceRequired:1b,Silent:1b,NoAI:1b,DeathLootTable:"asset:mob/death/1004.tultaria"}
>>>>>>> master
