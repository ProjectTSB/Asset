#> asset:effect/0210.fading_speed/tick/reduce_stack
#
#
#
# @within function asset:effect/0210.fading_speed/tick/

# スタックが1ならreturn
    execute if data storage asset:context {Stack:1} run return fail

# スタックを1減らす
    execute store result storage asset:context Stack int 0.9999999999 run data get storage asset:context Stack

# 補正を更新
    function asset:effect/0210.fading_speed/modifier/remove
    function asset:effect/0210.fading_speed/modifier/add

# 効果時間を元に戻す
    data modify storage asset:context Duration set from storage asset:context this.Duration
