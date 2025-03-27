#> asset:mob/0422.silver_bullet/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/422/summon

# 元となるEntityを召喚する
    summon silverfish ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AntiBurn","AlwaysSlowFall"]}
