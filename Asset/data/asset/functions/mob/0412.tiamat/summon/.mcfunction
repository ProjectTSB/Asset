#> asset:mob/0412.tiamat/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/412/summon

# 既に召喚されている場合は中断する（TODO）
    # execute if entity @e[type=slime,tag=BG.EntityRoot] run return 0

# 元となるEntityを召喚する
    summon slime ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","BG.EntityRoot"],NoAI:1b,Silent:1b,DeathLootTable:"empty"}
