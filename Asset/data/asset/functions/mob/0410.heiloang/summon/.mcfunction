#> asset:mob/0410.heiloang/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/410/summon

# 元となるEntityを召喚する
    summon slime ~ ~ ~ {Tags:["MobInit","AlwaysInvisible"]}
