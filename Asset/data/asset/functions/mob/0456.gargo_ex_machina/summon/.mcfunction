#> asset:mob/0456.gargo_ex_machina/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/456/summon

# 元となるEntityを召喚する
    summon slime ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","CO.EntityRoot"],Size:0,NoAI:1b,Silent:1b,DeathLootTable:"empty"}
