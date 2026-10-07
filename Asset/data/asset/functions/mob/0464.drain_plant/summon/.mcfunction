#> asset:mob/0464.drain_plant/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/464/summon

# 元となるEntityを召喚する
    summon zombie ~ ~ ~ {Silent:1b,NoAI:1b,DeathTime:19s,Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","Immovable"],DeathLootTable:"empty"}
