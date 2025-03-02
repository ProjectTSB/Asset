#> asset:mob/0213.terrible_sonic_bomber/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/213/summon

# 元となるEntityを召喚する
    summon phantom ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AntiBurn","AlwaysInvisible"],DeathLootTable:"empty",NoAI:1b}
