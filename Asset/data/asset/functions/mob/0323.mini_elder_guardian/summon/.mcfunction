#> asset:mob/0323.mini_elder_guardian/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/323/summon

# 元となるEntityを召喚する
    summon zombie ~ ~ ~ {Silent:1b,IsBaby:0b,NoAI:1b,Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","AlwaysSlowFall"],DeathLootTable:"minecraft:entities/elder_guardian"}
