#> asset:mob/0201.burnt_out_dream/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/201/summon

# 元となるEntityを召喚する
    summon skeleton ~ ~ ~ {Tags:["MobInit","ProcessCommonTag","AntiFallDamage"]}
