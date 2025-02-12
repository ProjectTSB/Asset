#> asset:mob/0264.dark_summoner/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/264/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Silent:1b,Tags:["MobInit","ProcessCommonTag","AlwaysInvisible","AlwaysSlowFall"],DeathLootTable:"empty"}
