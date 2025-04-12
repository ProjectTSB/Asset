#> asset:mob/0439.dps_checker_boy/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/439/summon

# 元となるEntityを召喚する
    summon skeleton ~ ~ ~ {Silent:1b,NoAI:1b,Tags:["MobInit","AlwaysInvisible"],DeathLootTable:"empty"}
