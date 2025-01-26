#> asset:object/2200.twins_escape_animation/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/2200/summon

# 元となるEntityを召喚する
    summon marker ~ ~ ~ {Tags:["ObjectInit"]}
