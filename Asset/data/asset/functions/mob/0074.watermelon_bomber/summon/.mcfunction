#> asset:mob/0074.watermelon_bomber/summon/
#
# Mob召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/74/summon

# 元となるMobを召喚する
    summon zombie ~ ~ ~ {Silent:1b,Tags:["MobInit","AllowProcessingCommonTag","AlwaysInvisible"],DeathLootTable:"empty"}
