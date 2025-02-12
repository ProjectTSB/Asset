#> asset:mob/0377.grey_guardian_v2/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/377/summon

# 元となるEntityを召喚する
    summon iron_golem ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible"],Silent:1b,NoAI:1b,DeathLootTable:"empty"}
