#> asset:mob/0418.astro_zombie/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/418/summon

# 元となるEntityを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AntiBurn","AlwaysSlowFall"]}
