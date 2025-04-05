#> asset:object/2207.eclael_slash_line/tick/effect_check
#
# Objectのtick時の処理
#
# @within asset:object/2207.eclael_slash_line/tick/

# 確率で2回実行
    function asset:object/2207.eclael_slash_line/tick/effect
    execute if predicate lib:random_pass_per/10 run function asset:object/2207.eclael_slash_line/tick/effect
