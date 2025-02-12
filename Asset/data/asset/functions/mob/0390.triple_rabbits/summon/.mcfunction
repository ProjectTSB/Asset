#> asset:mob/0390.triple_rabbits/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/390/summon

# 元となるEntityを召喚する
    summon slime ~ ~ ~ {Tags:["MobInit","AllowProcessingCommonTag","AlwaysInvisible","Immovable"],Silent:1b,NoAI:1b,NoGravity:1b,Invulnerable:1b,DeathLootTable:"empty"}
