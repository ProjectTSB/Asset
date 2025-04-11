#> asset:mob/0411.behemoth/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/411/summon

# 既に召喚されている場合は中断する（TODO）
    # execute if entity @e[tag=BE.EntityRoot] run return 0

# 元となるEntityを召喚する
    summon slime ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","BF.EntityRoot"],NoAI:1b,Silent:1b,DeathLootTable:"empty"}
