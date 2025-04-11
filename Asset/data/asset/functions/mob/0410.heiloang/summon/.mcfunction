#> asset:mob/0410.heiloang/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/410/summon

# 既に召喚されている場合は中断する（TODO）
    # execute if entity @e[type=slime,tag=BE.EntityRoot] run return 0

# 元となるEntityを召喚する
    summon slime ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","BE.EntityRoot"],Size:7,NoAI:1b,Silent:1b,DeathLootTable:"empty"}
    # 開発中は当たり判定をわかりやすくするため、あえて非透明化
        # summon slime ~ ~ ~ {Tags:["MobInit","BE.EntityRoot"],Size:3,NoAI:1b,Silent:1b,DeathLootTable:"empty"}
