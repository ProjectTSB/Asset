#> asset:mob/0214.drone/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/214/summon

# 元となるEntityを召喚する
    summon phantom ~ ~ ~ {Tags:["MobInit","AntiBurn"],NoAI:1b}
