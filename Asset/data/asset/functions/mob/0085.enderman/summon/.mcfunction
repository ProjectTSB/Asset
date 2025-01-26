#> asset:mob/0085.enderman/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:mob/alias/85/summon

# 元となるEntityを召喚する
    summon enderman ~ ~ ~ {Tags:["MobInit"]}
