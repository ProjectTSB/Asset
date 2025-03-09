#> asset:mob/0077.chorus_zombie/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/77/summon

# 元となるEntityを召喚する
    summon zombie ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AlwaysInvisible"],DeathLootTable:"asset:mob/death/0077.chorus_zombie"}
