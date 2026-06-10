#> asset:mob/0461.nectar_plant/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/461/summon

# 元となるEntityを召喚する
    summon zombie ~ ~ ~ {Silent:1b,DeathTime:19s,NoAI:1b,Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","Immovable"],DeathLootTable:"empty"}
