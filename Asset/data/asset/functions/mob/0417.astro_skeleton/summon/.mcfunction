#> asset:mob/0417.astro_skeleton/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/417/summon

# 元となるEntityを召喚する
    summon skeleton ~ ~ ~ {Tags:["MobInit","AllowProcessingCommonTag","AntiBurn","AlwaysSlowFall"]}
