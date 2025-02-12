#> asset:mob/0372.tutankhamen/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/372/summon

# 元となるEntityを召喚する
    summon wither_skeleton ~ ~ ~ {NoAI:1b,Tags:["MobInit","AllowProcessingCommonTag","AlwaysInvisible"],DeathLootTable:"empty"}
