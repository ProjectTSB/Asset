#> asset:mob/0437.lawless_iron_doll/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/437/summon

# 元となるEntityを召喚する
    summon iron_golem ~ ~ ~ {DeathTime:19s,NoAI:1b,Silent:1b,Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","C5.Moveset.Intro"],DeathLootTable:"empty"}
