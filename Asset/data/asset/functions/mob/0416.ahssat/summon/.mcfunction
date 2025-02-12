#> asset:mob/0416.ahssat/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/416/summon

# 元となるEntityを召喚する
    summon skeleton ~ ~ ~ {Silent:1b,Tags:["MobInit","AllowProcessingCommonTag","AntiBurn","AlwaysSlowFall"],DeathLootTable:"empty"}
