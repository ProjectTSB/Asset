#> asset:mob/0365.frestchika/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/365/summon

# 元となるEntityを召喚する
    summon wither_skeleton ~ ~ ~ {DeathTime:19s,NoAI:1b,Silent:1b,Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","A5.Moveset.Intro"],DeathLootTable:"empty"}
